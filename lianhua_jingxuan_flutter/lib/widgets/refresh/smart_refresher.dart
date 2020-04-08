/*
    Author: Jpeng
    Email: peng8350@gmail.com
    createTime:2018-05-01 11:39
 */

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import './classic_indicator.dart';
import 'dart:math' as math;

import './default_constants.dart';
import './footer_indicator.dart';
import './indicator_config.dart';
import './indicator_wrap.dart';
import './refresh_physics.dart';

enum WrapperType { Refresh, Loading }

enum RefreshStatus {init, idle, canRefresh, refreshing, completed, failed, noMore }

/*
    This is the most important component that provides drop-down refresh and up loading.
 */
class SmartRefresher extends StatefulWidget {
  //indicate your listView
  final ScrollView child;

  final TextStyle textStyle;

  final IndicatorBuilder headerBuilder;
  final IndicatorBuilder footerBuilder;
  // configure your header and footer
  final Config headerConfig, footerConfig;
  // This bool will affect whether or not to have the function of drop-up load.
  final bool enablePullUp;
  //This bool will affect whether or not to have the function of drop-down refresh.
  final bool enablePullDown;
  // if open OverScroll if you use RefreshIndicator and LoadFooter
  final bool enableOverScroll;
  // upper and downer callback when you drag out of the distance
  final OnRefresh onHeaderRefresh;
  final FooterRefresh onFooterRefresh;
  // This method will callback when the indicator changes from edge to edge.
  final OnOffsetChange onOffsetChange;
  //controll inner state
  final RefreshController controller;

  SmartRefresher({
    Key key,
    @required this.child,
    @required this.controller,
    IndicatorBuilder headerBuilder,
    IndicatorBuilder footerBuilder,
    this.textStyle: const TextStyle(color: const Color(0xff555555)),
    this.headerConfig: const RefreshConfig(),
    this.footerConfig: const LoadConfig(),
    this.enableOverScroll: default_enableOverScroll,
    this.enablePullDown: default_enablePullDown,
    this.enablePullUp: default_enablePullUp,
    this.onHeaderRefresh,
    this.onFooterRefresh,
    this.onOffsetChange,
  })  : assert(child != null),
        assert(controller != null),
        this.headerBuilder = headerBuilder ??
            ((BuildContext context, RefreshStatus mode) {
              return new ClassicIndicator(mode: mode, textStyle: textStyle,);
            }),
        this.footerBuilder = footerBuilder ??
            ((BuildContext context, RefreshStatus mode) {
              return new FooterIndicator(mode: mode, textStyle: textStyle,);
            }),
        super(key: key);

  @override
  _SmartRefresherState createState() => new _SmartRefresherState();
}

class _SmartRefresherState extends State<SmartRefresher> {
  // listen the listen offset or on...
  ScrollController _scrollController;
  // key to get height header of footer
  final GlobalKey _headerKey = new GlobalKey(), _footerKey = new GlobalKey();

  ValueNotifier<double> offsetLis = new ValueNotifier(0.0);

  //handle the scrollStartEvent
  bool _handleScrollStart(ScrollStartNotification notification) {
    // This is used to interupt useless callback when the pull up load rolls back.
    if ((notification.metrics.outOfRange)) {
      return false;
    }
    GestureProcessor topWrap = _headerKey.currentState as GestureProcessor;
    GestureProcessor bottomWrap = _footerKey.currentState as GestureProcessor;
    if (widget.enablePullUp) bottomWrap.onDragStart(notification);
    if (widget.enablePullDown) topWrap.onDragStart(notification);
    return false;
  }

  //handle the scrollMoveEvent
  bool _handleScrollMoving(ScrollUpdateNotification notification) {
    if (_measure(notification) != -1.0)
      offsetLis.value = _measure(notification);
    GestureProcessor topWrap = _headerKey.currentState as GestureProcessor;
    GestureProcessor bottomWrap = _footerKey.currentState as GestureProcessor;
    if (widget.enablePullUp) bottomWrap.onDragMove(notification);
    if (widget.enablePullDown) topWrap.onDragMove(notification);
    return false;
  }

  //handle the scrollEndEvent
  bool _handleScrollEnd(ScrollNotification notification) {
    GestureProcessor topWrap = _headerKey.currentState as GestureProcessor;
    GestureProcessor bottomWrap = _footerKey.currentState as GestureProcessor;
    if (widget.enablePullUp) bottomWrap.onDragEnd(notification);
    if (widget.enablePullDown) topWrap.onDragEnd(notification);
    return false;
  }

  bool _dispatchScrollEvent(ScrollNotification notification) {
    // ignore the nested scrollview's notification
    if (notification.depth != 0) {
      return false;
    }
    // when is scroll in the ScrollInside,nothing to do
    if ((!_isPullUp(notification) && !_isPullDown(notification))) return false;
    if (notification is ScrollStartNotification) {
      return _handleScrollStart(notification);
    }
    if (notification is ScrollUpdateNotification) {
      //if dragDetails is null,This represents the user's finger out of the screen
      if (notification.dragDetails == null) {
        return _handleScrollEnd(notification);
      } else if (notification.dragDetails != null) {
        return _handleScrollMoving(notification);
      }
    }
    if (notification is ScrollEndNotification) {
      _handleScrollEnd(notification);
    }

    return false;
  }

  //check user is pulling up
  bool _isPullUp(ScrollNotification noti) {
    return noti.metrics.pixels < 0;
  }

  //check user is pulling down
  bool _isPullDown(ScrollNotification noti) {
    return noti.metrics.pixels > 0;
  }

  double _measure(ScrollNotification notification) {
    if (notification.metrics.minScrollExtent - notification.metrics.pixels >
        0) {
      return (notification.metrics.minScrollExtent -
              notification.metrics.pixels) /
          widget.headerConfig.triggerDistance;
    } else if (notification.metrics.pixels -
            notification.metrics.maxScrollExtent >
        0) {
      return (notification.metrics.pixels -
              notification.metrics.maxScrollExtent) /
          widget.footerConfig.triggerDistance;
    }
    return -1.0;
  }

  void _init() {
    _scrollController = widget.child.controller ?? new ScrollController();
    widget.controller._scrollController = _scrollController;
    widget.controller._footerHeight = widget.footerConfig is RefreshConfig
        ? (widget.footerConfig as RefreshConfig).height
        : 0.0;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _onAfterBuild();
    });
    _scrollController.addListener(_handleOffsetCallback);
    widget.controller._headerMode.addListener(() {
      _didChangeMode(true, widget.controller._headerMode);
    });
    widget.controller._footerMode.addListener(() {
//      _didChangeMode(false, widget.controller._footerMode);
    });
  }

  void _handleOffsetCallback() {
    final double overscrollPastStart = math.max(
        _scrollController.position.minScrollExtent -
            _scrollController.position.pixels +
            (widget.headerConfig is RefreshConfig &&
                    (widget.controller._headerMode.value ==
                            RefreshStatus.refreshing ||
                        widget.controller._headerMode.value ==
                            RefreshStatus.completed ||
                        widget.controller._headerMode.value ==
                            RefreshStatus.failed ||
                        widget.controller._headerMode.value ==
                            RefreshStatus.init)
                ? (widget.headerConfig as RefreshConfig).height
                : 0.0),
        0.0);
    final double overscrollPastEnd = math.max(
        _scrollController.position.pixels -
            _scrollController.position.maxScrollExtent +
            (widget.footerConfig is RefreshConfig &&
                    (widget.controller._footerMode.value ==
                            RefreshStatus.refreshing ||
                        widget.controller._footerMode.value ==
                            RefreshStatus.completed ||
                        widget.controller._footerMode.value ==
                            RefreshStatus.failed)
                ? (widget.footerConfig as RefreshConfig).height
                : 0.0),
        0.0);

    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      if (widget.enablePullUp == true && widget.controller._footerMode.value != RefreshStatus.noMore) {
        // 让footer 出现
        widget.controller._footerMode.value = RefreshStatus.idle;
        widget.onFooterRefresh();
      }
    }

    if (overscrollPastStart > overscrollPastEnd) {
      if (widget.headerConfig is RefreshConfig) {
        if (widget.onOffsetChange != null) {
          widget.onOffsetChange(true, overscrollPastStart);
        }
      } else {
        if (widget.onOffsetChange != null) {
          widget.onOffsetChange(true, overscrollPastStart);
        }
      }
    } else if (overscrollPastEnd > 0) {


      if (widget.footerConfig is RefreshConfig) {
        if (widget.onOffsetChange != null) {
          widget.onOffsetChange(false, overscrollPastEnd);
        }
      } else {
        if (widget.onOffsetChange != null) {
          widget.onOffsetChange(false, overscrollPastEnd);
        }
      }
    }
  }

  _didChangeMode(bool up, ValueNotifier<RefreshStatus> mode) {
    switch (mode.value) {
      case RefreshStatus.refreshing:
        if (widget.onHeaderRefresh != null) {
          widget.onHeaderRefresh();
        }
        if (up && widget.headerConfig is RefreshConfig) {
          RefreshConfig config = widget.headerConfig as RefreshConfig;
          _scrollController.jumpTo(_scrollController.offset + config.height);
        }
        break;
      case RefreshStatus.idle:
        if (up) {
          _scrollController.animateTo(-1.0,
              duration: const Duration(milliseconds: 200), curve: Curves.linear);
        }
        break;
      default:
        break;
    }
  }

  void _onAfterBuild() {
    if (widget.headerConfig is LoadConfig) {
      if ((widget.headerConfig as LoadConfig).bottomWhenBuild) {
        _scrollController.jumpTo(-(_scrollController.position.pixels -
            _scrollController.position.maxScrollExtent));
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.removeListener(_handleOffsetCallback);
    if (widget.child.controller == null &&
        widget.child.controller != _scrollController) {
      _scrollController.dispose();
    }
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init();
  }

  Widget _buildWrapperByConfig(Config config, bool up) {
    if (config is LoadConfig) {
      return new LoadWrapper(
        key: up ? _headerKey : _footerKey,
        modeListener:
            up ? widget.controller._headerMode : widget.controller._footerMode,
        up: up,
        autoLoad: config.autoLoad,
        triggerDistance: config.triggerDistance,
        builder: up ? widget.headerBuilder : widget.footerBuilder,
      );
    } else if (config is RefreshConfig) {
      return new RefreshWrapper(
        key: up ? _headerKey : _footerKey,
        modeLis:
            up ? widget.controller._headerMode : widget.controller._footerMode,
        up: up,
        onOffsetChange: (bool up, double offset) {
          if (widget.onOffsetChange != null) {
            widget.onOffsetChange(
                up,
                up
                    ? -_scrollController.offset + offset
                    : _scrollController.position.pixels -
                        _scrollController.position.maxScrollExtent +
                        offset);
          }
        },
        completeDuration: config.completeDuration,
        triggerDistance: config.triggerDistance,
        height: config.height,
        builder: up ? widget.headerBuilder : widget.footerBuilder,
      );
    }
    return new Container();
  }

  @override
  void didUpdateWidget(SmartRefresher oldWidget) {
    // TODO: implement didUpdateWidget
    if (widget.child.controller != _scrollController) {
      _scrollController.removeListener(_handleOffsetCallback);
      _scrollController = widget.child.controller ?? ScrollController();
      _scrollController.addListener(_handleOffsetCallback);
      widget.controller._scrollController = _scrollController;
    }

    widget.controller._footerHeight = widget.footerConfig is RefreshConfig
        ? (widget.footerConfig as RefreshConfig).height
        : 0.0;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> slivers =
        new List.from(widget.child.buildSlivers(context), growable: true);
    slivers.add(new SliverToBoxAdapter(
      child: widget.footerBuilder != null && widget.enablePullUp
          ? _buildWrapperByConfig(widget.footerConfig, false)
          : new Container(),
    ));

    slivers.insert(
        0,
        new SliverToBoxAdapter(
            child: widget.headerBuilder != null && widget.enablePullDown
                ? _buildWrapperByConfig(widget.headerConfig, true)
                : new Container()));

    return new LayoutBuilder(builder: (context, cons) {
      return new Stack(
        children: <Widget>[
          new Positioned(
              top: !widget.enablePullDown || widget.headerConfig is LoadConfig
                  ? 0.0
                  : -(widget.headerConfig as RefreshConfig).height,
              bottom: !widget.enablePullUp || widget.footerConfig is LoadConfig
                  ? 0.0
                  : -(widget.footerConfig as RefreshConfig).height,
              left: 0.0,
              right: 0.0,
              child: new NotificationListener(
                child: new CustomScrollView(
                  physics: new RefreshScrollPhysics(
                      enableOverScroll: widget.enableOverScroll),
                  controller: _scrollController,
                  cacheExtent: widget.child.cacheExtent,
                  slivers: slivers,
                ),
                onNotification: _dispatchScrollEvent,
              )),
        ],
      );
    });
  }
}

abstract class Indicator extends StatefulWidget {
  final RefreshStatus mode;

  const Indicator({Key key, this.mode = RefreshStatus.init}) : super(key: key);
}

class RefreshController {
  ValueNotifier<RefreshStatus> _headerMode =
      new ValueNotifier(RefreshStatus.init);
  ValueNotifier<RefreshStatus> _footerMode =
      new ValueNotifier(RefreshStatus.init);
  ScrollController _scrollController;
  double _footerHeight;

  void requestRefresh(bool up) {
    assert(_scrollController != null,
        'Try not to call requestRefresh() before build,please call after the ui was rendered');
    if (up) {
      if (_headerMode.value == RefreshStatus.idle)
        _headerMode.value = RefreshStatus.refreshing;
      _scrollController.animateTo(0.0,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    } else {
      if (_footerMode.value == RefreshStatus.idle) {
        _footerMode.value = RefreshStatus.refreshing;
        _scrollController.animateTo(
            _scrollController.position.maxScrollExtent + _footerHeight,
            duration: const Duration(milliseconds: 200),
            curve: Curves.linear);
      }
    }
  }

  void sendBack(bool up, RefreshStatus mode) {
    if (up) {
      _headerMode.value = mode;
    } else {
      _footerMode.value = mode;
    }
  }

  RefreshStatus get headerStatus => _headerMode.value;

  RefreshStatus get footerStatus => _footerMode.value;

  isRefresh(bool up) {
    if (up) {
      return _headerMode.value == RefreshStatus.refreshing;
    } else {
      print('_footerMode.value赋值3');
      return _footerMode.value == RefreshStatus.refreshing;
    }
  }
}
