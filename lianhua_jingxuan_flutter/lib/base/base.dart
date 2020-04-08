
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

/// BaseProvide
class BaseProvider with ChangeNotifier {

  CompositeSubscription compositeSubscription = CompositeSubscription();

  /// add [StreamSubscription] to [compositeSubscription]
  ///
  /// 在 [dispose]的时候能进行取消
  addSubscription(StreamSubscription subscription){
    compositeSubscription.add(subscription);
  }

  BaseProvider() {
  }

  @override
  void dispose() {
    super.dispose();
    compositeSubscription.dispose();
  }
}