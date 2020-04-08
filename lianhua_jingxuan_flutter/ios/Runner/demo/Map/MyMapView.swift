//
//  MyMapView.swift
//  Runner
//
//  Created by darren on 2019/9/29.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class MyMapView: NSObject, FlutterPlatformView, BMKMapViewDelegate {
    let frame: CGRect;
    let viewId: Int64;
    var messenger: FlutterBinaryMessenger!
    var mapView: BMKMapView?

    init(_ frame: CGRect,viewID: Int64,args :Any?, binaryMessenger: FlutterBinaryMessenger) {
        self.frame = frame;
        self.viewId = viewID;
        self.messenger=binaryMessenger;
    }
    
    
    func view() -> UIView {        
        let mapManager = BMKMapManager();
        // 如果要关注网络及授权验证事件，请设定generalDelegate参数
        let ret = mapManager.start(BaiduAk, generalDelegate: nil)
        if (!ret) {
            print("manager start failed!")
        } else {
            print("manager start success!")
        }
        mapView = BMKMapView.init(frame: self.frame)

        mapView?.delegate = self
        mapView?.showsUserLocation = true
        // 显示我的位置，我的位置图标会旋转，地图不会旋转
        mapView?.userTrackingMode = BMKUserTrackingModeNone
        
        mapView?.zoomLevel = 17
        MapTools.share.updateClouse = {(location) in
            self.mapView?.updateLocationData(location)
            self.mapView?.setCenter(CLLocationCoordinate2D.init(latitude: CLLocationDegrees.init(location.location.coordinate.latitude), longitude: CLLocationDegrees.init(location.location.coordinate.longitude)), animated: true)
        }
        
        // 定位图标
//        let param = BMKLocationViewDisplayParam.init()
//        param.locationViewImage = UIImage.init(named: "location.png")
//        mapView?.updateLocationView(with: param)
        

        return mapView ?? BMKMapView();
    }
    
    func mapView(_ mapView: BMKMapView!, regionDidChangeAnimated animated: Bool) {
        MapTools.share.decodeAddress(latitude: mapView.centerCoordinate.latitude, longitude: mapView.centerCoordinate.longitude)
    }
}
