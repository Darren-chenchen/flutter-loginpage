package com.hd123.lianhua_jingxuan_flutter;


import android.os.Bundle;

import com.baidu.mapapi.map.MapView;
import com.baidu.mapapi.map.MyLocationData;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.GeneratedPluginRegistrant;


public class MainActivity extends FlutterActivity {
    String FlutterMethodChannel_Name = "lianhua_jingxuan_flutter/mutual";
    String FlutterEventChannel_Name = "lianhua_jingxuan_flutter/event";

    FlutterPluginBasicTest pluginBasicTest = new FlutterPluginBasicTest();

    private MapView mMapView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EventBus.getDefault().register(this);


        mMapView = new MapView(this);
        mMapView.getMap().setMyLocationEnabled(true);
        ViewRegistrant.registerWith(this, mMapView);
        GeneratedPluginRegistrant.registerWith(this);
        this.registerFor(this);
    }


    @Override
    protected void onResume() {
        super.onResume();
        mMapView.onResume();
    }

    @Override
    protected void onPause() {
        super.onPause();
        mMapView.onPause();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMapEvent(MapEvent event) {
        MyLocationData locData = new MyLocationData.Builder()
//                .accuracy(event.getData().)
                // 此处设置开发者获取到的方向信息，顺时针0-360
//                .direction(mCurrentDirection)
                .latitude(Double.parseDouble(event.getData().get("latitude").toString()))
                .longitude(Double.parseDouble(event.getData().get("longitude").toString()))
                .build();
        mMapView.getMap().setMyLocationData(locData);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    public void registerFor(PluginRegistry registrar) {
        pluginBasicTest.registerWith(registrar.registrarFor(FlutterMethodChannel_Name), this);
    }
}