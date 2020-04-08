import 'dart:async';
import 'package:dio/dio.dart';
import 'package:lianhua_jingxuan_flutter/data/base.dart';
import 'package:lianhua_jingxuan_flutter/widgets/my_toast.dart';
import 'package:rxdart/rxdart.dart';
import 'httpUtil.dart';

typedef MusicDownloadProgressCallback = void Function(
    double progress, String songId);
CancelToken downLoadMp3CancelToken = new CancelToken();
CancelToken downLoadImageCancelToken = new CancelToken();

Map<String, CancelToken> cancelTokens = {};

Observable<BaseResponse> get(String url, {Map<String, dynamic> params}) =>
    Observable.fromFuture(_get(url, params: params))
        .delay(Duration(milliseconds: 500))
        .asBroadcastStream();

Future<BaseResponse> _get(String url, {Map<String, dynamic> params}) async {
  var response = await HttpUtil().dio.get(url, queryParameters: params);
  var res = BaseResponse.fromJson(response.data);
  if (res.success == false) {
    var msg = res.msg ?? '';
    if (msg.length == 0) {
      msg = res.echoMessage ?? '';
    }
    MyToast.show(MyToastState.fail, msg);
  }
  return res;
}

Observable<BaseResponse> post(String url,
        {dynamic body, Map<String, dynamic> queryParameters}) =>
    Observable.fromFuture(_post(url, body, queryParameters: queryParameters))
        .delay(Duration(milliseconds: 500))
        .asBroadcastStream();

Future<BaseResponse> _post(String url, dynamic body,
    {Map<String, dynamic> queryParameters}) async {
  var response = await HttpUtil()
      .dio
      .post(url, data: body, queryParameters: queryParameters);

  var res = BaseResponse.fromJson(response.data);

  if (res.success == false) {
    var msg = res.msg ?? '';
    if (msg.length == 0) {
      msg = res.echoMessage ?? '';
    }
    MyToast.show(MyToastState.fail, msg);
  }
  return res;
}
