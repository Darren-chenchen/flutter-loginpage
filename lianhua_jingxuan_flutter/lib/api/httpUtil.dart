
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:lianhua_jingxuan_flutter/base/app_config.dart';
import 'package:lianhua_jingxuan_flutter/widgets/my_toast.dart';

// 超时未处理
class HttpUtil {
  static HttpUtil instance;
  Dio dio;
  BaseOptions options;

  static HttpUtil getInstance() {
    print('getInstance');
    if (instance == null) {
      instance = new HttpUtil();
    }
    return instance;
  }
  HttpUtil() {
    dio = new Dio()
      ..options = BaseOptions(
          baseUrl: AppConfig.baseUrl,
          connectTimeout: 30000,
          receiveTimeout: 30000)
      ..interceptors.add(HeaderInterceptor())
      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

//    if (!AppConfig.inProduction) {
//      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
//        client.findProxy = (uri) {
//          //proxy all request to localhost:8888
//          return "PROXY localhost:8888";
//        };
//      };
//    }
  }
}

class HeaderInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options) {
    final token = AppConfig.userTools.getUserToken();
    if (token != null && token.length > 0) {
      options.headers.putIfAbsent('Authorization', () => 'Bearer' + ' ' + token);
    }
//    if (options.uri.path.indexOf('api/user/advice/Imgs') > 0 || options.uri.path.indexOf('api/user/uploadUserHeader') > 0) { // 上传图片
//      options.headers.putIfAbsent('Content-Type', () => 'multipart/form-data');
//      print('上传图片');
//    } else {
//    }
//    options.headers.putIfAbsent('Content-Type', () => 'application/json;charset=UTF-8');

    return super.onRequest(options);
  }
  @override
  onError(DioError err) {
    if (err.type == DioErrorType.CONNECT_TIMEOUT) { // print("连接超时");
      print("连接超时");
      MyToast.show(MyToastState.fail, '请求超时');
    } else if (err.type == DioErrorType.SEND_TIMEOUT) {
      print("请求超时");
      MyToast.show(MyToastState.fail, '请求超时');
    } else if (err.type == DioErrorType.RECEIVE_TIMEOUT) {
      print("响应超时");
      MyToast.show(MyToastState.fail, '请求超时');
    } else if (err.type == DioErrorType.RESPONSE) {
      print("出现异常");
      MyToast.show(MyToastState.fail, '服务器发生未知错误');
    } else if (err.type == DioErrorType.CANCEL) {
      print("请求取消");
      MyToast.show(MyToastState.fail, '请求已取消');
    } else {
      print("未知错误");
      MyToast.show(MyToastState.fail, '服务器发生未知错误');
    }

    // TODO: implement onError
    return super.onError(err);
  }
}

