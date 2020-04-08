package com.hd123.lianhua_jingxuan_flutter;

import android.content.Context;
import android.util.Log;

import org.greenrobot.eventbus.EventBus;

import java.util.HashMap;
import java.util.Map;

import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

public class FlutterPluginBasicTest implements MethodChannel.MethodCallHandler, EventChannel.StreamHandler {

    String FlutterMethodChannel_Name = "lianhua_jingxuan_flutter/mutual";
    static String FlutterEventChannel_Name = "lianhua_jingxuan_flutter/event";

    MethodChannel channel;
    Context myContext;

    EventChannel channel_Event;
    EventChannel.EventSink eventSink;

    public void registerWith(PluginRegistry.Registrar registrar, Context con) {
        this.myContext = con;
        channel = new MethodChannel(registrar.messenger(), FlutterMethodChannel_Name);
        channel.setMethodCallHandler(this);

        channel_Event = new EventChannel(registrar.messenger(), FlutterEventChannel_Name);
        channel_Event.setStreamHandler(this);

        setupDataToFlutter();
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("startLocation")) {
            MapTools.getInstance().startLocation(myContext);
            //返回给flutter的参数
            result.success("success");
        }
    }

    private void setupDataToFlutter() {
        MapTools.getInstance().setMapToolsSuccessCallBack(new MapTools.MapToolsSuccessCallBack() {

            @Override
            public void success(Map map) {
                HashMap data = new HashMap();
                data.put("key", "locationSuccess");
                data.put("value", map);
                EventBus.getDefault().post(new MapEvent(map));
                FlutterPluginBasicTest.this.eventSink.success(data);
            }
        });
    }

    @Override
    public void onListen(Object o, EventChannel.EventSink eventSink) {
        this.eventSink = eventSink;
    }

    @Override
    public void onCancel(Object o) {

    }
}

