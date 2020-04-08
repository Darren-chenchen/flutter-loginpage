//
//  MyPlatformViewFactory.swift
//  Runner
//
//  Created by darren on 2019/9/29.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class MyPlatformViewFactory: NSObject, FlutterPlatformViewFactory {
    var messenger: FlutterBinaryMessenger!
        
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return MyMapView(frame,viewID : viewId , args: args,binaryMessenger:messenger);
    }
    
    @objc public init(messenger: (NSObject & FlutterBinaryMessenger)?) {
        super.init()
        self.messenger = messenger
    }
}

class BaiduMapViewPlugin {
    
    static var mapViewId = "BaiduMapView_id"
    static func registerWith(registry:FlutterPluginRegistry) {
        let pluginKey = "Baidu_MapView_Plugin";
        if (registry.hasPlugin(pluginKey)) {return};
        let registrar = registry.registrar(forPlugin: pluginKey);
        let messenger = registrar.messenger() as! (NSObject & FlutterBinaryMessenger)
        /// 建立flutter与原生沟通的桥梁
        MethodChannelTools.share.initMethodChannel(messenger: messenger)

        registrar.register(MyPlatformViewFactory(messenger:messenger),withId: mapViewId);
    }
}
