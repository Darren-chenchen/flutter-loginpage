
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lianhua_jingxuan_flutter/widgets/video_player/src/player_controls.dart';
import 'package:screen/screen.dart';

import 'full_controls.dart';
import 'hd_player_provider.dart';


typedef Widget HDVideoRoutePageBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    HDVideoProvider provider);


class HDVideoProvider extends InheritedWidget {
  const HDVideoProvider({
    Key key,
    @required this.controller,
    @required Widget child,
  })  : assert(controller != null),
        assert(child != null),
        super(key: key, child: child);

  final HDVideoPlayerProvider controller;

  @override
  bool updateShouldNotify(HDVideoProvider old) =>
      controller != old.controller;
}

class HDPlayer extends StatefulWidget {
  HDPlayer({
    Key key,
    this.provider,
  })  : assert(provider != null, 'You must provide a HDVideoPlayerProvider'),
        super(key: key);

  final HDVideoPlayerProvider provider;

  @override
  HDPlayerState createState() {
    return HDPlayerState();
  }
}

class HDPlayerState extends State<HDPlayer> {
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    widget.provider.addListener(listener);
  }

  @override
  void dispose() {
    widget.provider.removeListener(listener);
    super.dispose();
  }

  @override
  void didUpdateWidget(HDPlayer oldWidget) {
    if (oldWidget.provider != widget.provider) {
      widget.provider.addListener(listener);
    }
    super.didUpdateWidget(oldWidget);
  }

  void listener() async {
    if (widget.provider.isFullScreen && !_isFullScreen) {
      _isFullScreen = true;
      await _pushFullScreenWidget(context);
    } else if (_isFullScreen) {
      Navigator.of(context).pop();
      _isFullScreen = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return HDVideoProvider(
      controller: widget.provider,
      child: PlayerControls(),
    );
  }

  Widget _buildFullScreenVideo(
      BuildContext context,
      Animation<double> animation,
      HDVideoProvider controllerProvider) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: controllerProvider,
      ),
    );
  }

  AnimatedWidget _defaultRoutePageBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      HDVideoProvider controllerProvider) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget child) {
        return _buildFullScreenVideo(context, animation, controllerProvider);
      },
    );
  }

  Widget _fullScreenRoutePageBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    var controllerProvider = HDVideoProvider(
      controller: widget.provider,
      child: PlayerControls(),
    );

    if (widget.provider.routePageBuilder == null) {
      return _defaultRoutePageBuilder(
          context, animation, secondaryAnimation, controllerProvider);
    }
    return widget.provider.routePageBuilder(
        context, animation, secondaryAnimation, controllerProvider);
  }

  Future<dynamic> _pushFullScreenWidget(BuildContext context) async {
//    final isAndroid = Theme.of(context).platform == TargetPlatform.android;
    final TransitionRoute<Null> route = PageRouteBuilder<Null>(
      settings: RouteSettings(isInitialRoute: false),
      pageBuilder: _fullScreenRoutePageBuilder,
    );

    SystemChrome.setEnabledSystemUIOverlays([]);
//    if (isAndroid) {
//      SystemChrome.setPreferredOrientations([
//        DeviceOrientation.landscapeLeft,
//        DeviceOrientation.landscapeRight,
//      ]);
//    }

    if (!widget.provider.allowedScreenSleep) {
      Screen.keepOn(true);
    }

    await Navigator.of(context).push(route);
    _isFullScreen = false;
    widget.provider.exitFullScreen();

    bool isKeptOn = await Screen.isKeptOn;
    if (isKeptOn) {
      Screen.keepOn(false);
    }

    SystemChrome.setEnabledSystemUIOverlays(
        widget.provider.systemOverlaysAfterFullScreen);
    SystemChrome.setPreferredOrientations(
        widget.provider.deviceOrientationsAfterFullScreen);
  }
}
