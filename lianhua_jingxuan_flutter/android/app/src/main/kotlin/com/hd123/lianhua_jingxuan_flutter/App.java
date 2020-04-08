package com.hd123.lianhua_jingxuan_flutter;

import android.support.multidex.MultiDex;

import com.baidu.mapapi.CoordType;
import com.baidu.mapapi.SDKInitializer;

import io.flutter.app.FlutterApplication;

public class App extends FlutterApplication {

    @Override
    public void onCreate() {
        super.onCreate();
        // 初始化百度地图 SDK
        SDKInitializer.initialize(this);
        SDKInitializer.setCoordType(CoordType.BD09LL);
        MultiDex.install(this);
    }
}