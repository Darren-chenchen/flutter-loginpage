//
//  MethodChannelTools.swift
//  Runner
//
//  Created by darren on 2019/10/11.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class MethodChannelTools: NSObject, FlutterStreamHandler {
    
    static var share = MethodChannelTools()
    var eventSink: FlutterEventSink?

    override init() {
        super.init()
    }
    
    func initMethodChannel(messenger: FlutterBinaryMessenger){
        let googleMapChannel = FlutterMethodChannel.init(name: FlutterMethodChannel_Name, binaryMessenger: messenger);
        googleMapChannel.setMethodCallHandler({
            (call: FlutterMethodCall, result: FlutterResult) -> Void in
            if (call.method == "startLocation"){
                let requestId = (call.arguments as? String) ?? ""
                MapTools.share.startLocation(requestId)
            } else if(call.method == "stopLocation") {
                MapTools.share.stopLocation()
            } else if(call.method == "getLongAndLat") {
                let map = call.arguments as? [String: Any] ?? ["":""]
                let requestId = (map["requestId"] as? String) ?? ""
                let city = (map["city"] as? String) ?? ""
                let address = (map["address"] as? String) ?? ""

                MapTools.share.getLatAndLong(city: city, address: address, requestId: requestId)
            } else if (call.method == "locationToAddress") {
                let address = (call.arguments as? String) ?? ""
                MapTools.share.locationToAddress(address: address)
            }
        });
        
        let evenChannal = FlutterEventChannel.init(name: FlutterEventChannel_Name, binaryMessenger: messenger)
        evenChannal.setStreamHandler(self)
        
        setupDataToFlutter()
    }
    
    /// ios 给flutter传递数据建立桥梁
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        self.eventSink = nil
        return nil
    }
    
    /// 原生传值给flutter
    func setupDataToFlutter() {
        MapTools.share.successClouse = {(data) in
            if (self.eventSink != nil) {
                let map = ["key": "locationSuccess", "value": data] as [String : Any]
                self.eventSink!(map)
            }
        }
        ///通过城市和地址获取经纬度成功
        MapTools.share.geoCodeSuccessClouse = {(data) in
            if (self.eventSink != nil) {
                let map = ["key": "geoCodeSuccess", "value": data] as [String : Any]
                self.eventSink!(map)
            }
        }
        ///通过城市和地址获取经纬度失败
        MapTools.share.geoCodeFailClouse = {(data) in
            if (self.eventSink != nil) {
                let map = ["key": "geoCodeFail", "value": data] as [String : Any]
                self.eventSink!(map)
            }
        }
        
        MapTools.share.failClouse = {(requestId) in
            if (self.eventSink != nil) {
                let map = ["key": "locationFail", "value": requestId]
                self.eventSink!(map)
            }
        }
    }
}
