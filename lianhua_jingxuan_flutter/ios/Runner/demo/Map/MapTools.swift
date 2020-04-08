//
//  MapTools.swift
//  Runner
//
//  Created by darren on 2019/10/10.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

typealias MapToolsLocationSuccessClouse = ([String: Any])->()
typealias MapToolsLocationFailClouse = (String)->()
typealias MapToolsUpdateLocationClouse = (BMKUserLocation)->()
typealias MapToolsGeoCodeSuccessClouse = ([String: Any])->()
typealias MapToolsGeoCodeFailClouse = ([String: Any])->()

class MapTools: NSObject, BMKLocationAuthDelegate, BMKLocationManagerDelegate, BMKGeoCodeSearchDelegate {
    
    static var share = MapTools()
    
    var requestLocationId: String = ""
    
    let _locationManager = BMKLocationManager()
    let userLocation = BMKUserLocation()
    let search: BMKGeoCodeSearch = BMKGeoCodeSearch()

    var successClouse: MapToolsLocationSuccessClouse?
    var failClouse: MapToolsLocationFailClouse?
    var updateClouse: MapToolsUpdateLocationClouse?
    var geoCodeSuccessClouse: MapToolsGeoCodeSuccessClouse?
    var geoCodeFailClouse: MapToolsGeoCodeFailClouse?

    override init() {
        super.init()
        
        BMKLocationAuth.sharedInstance()?.checkPermision(withKey: BaiduAk, authDelegate: self)
        
        //设置delegate
        _locationManager.delegate = self
        //设置返回位置的坐标系类型
        _locationManager.coordinateType = BMKLocationCoordinateType.BMK09LL
        //设置距离过滤参数
        _locationManager.distanceFilter = kCLDistanceFilterNone
        //设置预期精度参数
        _locationManager.desiredAccuracy = kCLLocationAccuracyBest
        //设置应用位置类型
        _locationManager.activityType = CLActivityType.automotiveNavigation
        //设置是否自动停止位置更新
        _locationManager.pausesLocationUpdatesAutomatically = false
        //设置是否允许后台定位
        _locationManager.allowsBackgroundLocationUpdates = false
        //设置位置获取超时时间
        _locationManager.locationTimeout = 10
        //设置获取地址信息超时时间
        _locationManager.reGeocodeTimeout = 10
        
        search.delegate = self
    }
    
    // 开启定位
    /// requestId每次开启定位都可以设置一个唯一的id
    func startLocation(_ requestId: String) {
        self.requestLocationId = requestId
        /// 判断是否开启了定位服务
        if(CLLocationManager.authorizationStatus() != .denied) {
        }else {
            let aleat = UIAlertController(title: "打开定位开关", message:"定位服务未开启,请进入系统设置>隐私>定位服务中打开开关", preferredStyle: .alert)
            let tempAction = UIAlertAction(title: "取消", style: .cancel) { (action) in
                    }
            let callAction = UIAlertAction(title: "立即设置", style: .default) { (action) in
                let url = URL(string: UIApplicationOpenSettingsURLString)
                if let url = url, UIApplication.shared.canOpenURL(url) {
                    if #available(iOS 10, *) {
                        UIApplication.shared.open(url, options: [:]) { (finsh) in
                            self.requestLocationOnce()
                        }
                    } else {
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            aleat.addAction(tempAction)
            aleat.addAction(callAction)
            UIApplication.shared.keyWindow?.rootViewController?.present(aleat, animated: true, completion: nil)
        }
        self.requestLocationOnce()
        
    }
    
    func requestLocationOnce() {
        // 单次定位
        _locationManager.requestLocation(withReGeocode: true, withNetworkState: true) { (location, locationNetworkState, error) in
            if (error != nil) {
                print(error?.localizedDescription ?? "")
            }
            self.locationSuccess(location: location)
        }
    }

    func stopLocation() {
        _locationManager.stopUpdatingLocation()
    }
    
    /// BMKLocationAuthDelegate
    func onCheckPermissionState(_ iError: BMKLocationAuthErrorCode) {
        if (iError == .success) { // 授权成功
            print("BMKLocationAuthDelegate授权成功");
        } else {
            sendFail()
        }
    }
    /// BMKLocationManagerDelegate
    /// 连续定位的回调,会一直定位
    func bmkLocationManager(_ manager: BMKLocationManager, didUpdate location: BMKLocation?, orError error: Error?) {
        if (error != nil) {
            print(error?.localizedDescription ?? "")
            sendFail()
        }
    }
    func bmkLocationManager(_ manager: BMKLocationManager, didFailWithError error: Error?) {
        sendFail()
    }
    
    // 定位到指定的位置
    func locationToAddress(address: String) {
        /// 获取经纬度
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            if (error != nil || placemarks?.count == 0) {
                /// 获取经纬度失败
                return
            }
            //创建placemark对象
            let placemark = placemarks?.first
            //经度
            let longitude = placemark?.location?.coordinate.longitude ?? 0
            //纬度
            let latitude = placemark?.location?.coordinate.latitude ?? 0
            
            let ulocation = BMKUserLocation()
            let cllocation = CLLocation.init(latitude: CLLocationDegrees.init(latitude), longitude: CLLocationDegrees.init(longitude))
            
            ulocation.location = cllocation
            if (self.updateClouse != nil) {
                self.updateClouse!(ulocation)
            }
        }
    }
    
    func locationSuccess(location: BMKLocation?) {
    
        self.userLocation.location = location?.location ?? CLLocation()
        
        if (self.updateClouse != nil) {
            self.updateClouse!(self.userLocation)
        }
        var describe = "" // 当前的位置
        var city = "" // 当前的城市
        var district = "" // 区
        var town = "" // 乡镇
        var street = "" // 街道
        var cityCode = "" // 城市代码
        var poiList: [[String: String]] = [] /// 周边信息

        guard let now_location = location else { return }
        let lat = Double(String(format: "%.6f", now_location.location?.coordinate.latitude ?? 0))
        let long = Double(String(format: "%.6f", now_location.location?.coordinate.longitude ?? 0))
        
        if ((now_location.rgcData) != nil) {
            city = now_location.rgcData?.city ?? ""
            district = now_location.rgcData?.district ?? ""
            town = now_location.rgcData?.town ?? ""
            street = now_location.rgcData?.street ?? ""
            cityCode = now_location.rgcData?.cityCode ?? ""
        }
        if ((now_location.rgcData?.poiList) != nil) {
            for poi in (now_location.rgcData?.poiList ?? []) {
                poiList.append([
                    "name": poi.name,
                    "uid": poi.uid,
                    "address": poi.addr
                ])
            }
        }
        if ((now_location.rgcData?.poiRegion) != nil) {
            describe = now_location.rgcData?.poiRegion.name ?? ""
        }
        
        self.sendMapData(lat: "\(lat ?? 0)", long: "\(long ?? 0)", describe: describe, poiList: poiList, city: city, district, town, street, cityCode)
    }
    
    func bmkLocationManager(_ manager: BMKLocationManager, didUpdate heading: CLHeading?) {
        if (heading == nil) {
            return
        }
            
        self.userLocation.heading = heading
        if (self.updateClouse != nil) {
            self.updateClouse!(self.userLocation)
        }
    }
    
    /// 根据位置查询经纬度
    func getLatAndLong(city: String, address: String, requestId: String) {
        self.requestLocationId = requestId
        // 不走代理
//        let geoCodeSearchOption = BMKGeoCodeSearchOption()
//        geoCodeSearchOption.address = address
//        geoCodeSearchOption.city = city
//        let flag = search.geoCode(geoCodeSearchOption)
//
//        if (flag) {
//            print("geo检索发送成功")
//        }  else {
//            print("geo检索发送失败")
//        }
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            if (error != nil || placemarks?.count == 0) {
                /// 获取经纬度失败
                if (self.geoCodeFailClouse != nil) {
                    self.geoCodeFailClouse!([
                        "requestId": self.requestLocationId
                    ])
                }
                return
            }
            //创建placemark对象
            let placemark = placemarks?.first
            //经度
            let longitude = placemark?.location?.coordinate.longitude ?? 0
            //纬度
            let latitude = placemark?.location?.coordinate.latitude ?? 0
            // 把经纬度传递给flutter
            if (self.geoCodeSuccessClouse != nil) {
                self.geoCodeSuccessClouse!([
                    "latitude": "\(latitude)",
                    "longitude": "\(longitude)",
                    "requestId": self.requestLocationId
                ])
            }
        }
    }
    /// BMKGeoCodeSearchDelegate
    func onGetGeoCodeResult(_ searcher: BMKGeoCodeSearch!, result: BMKGeoCodeSearchResult!, errorCode error: BMKSearchErrorCode) {
        print(error)
        if (error == BMK_SEARCH_NO_ERROR) {
            // 把经纬度传递给flutter
            if (self.geoCodeSuccessClouse != nil) {
                print("22222")
                self.geoCodeSuccessClouse!([
                    "latitude": "\(result.location.latitude)",
                    "longitude": "\(result.location.longitude)",
                    "requestId": self.requestLocationId
                ])
            }
        
        } else {
            print("检索失败");
        }
    }
    
    /// 根据经纬度查询位置信息
    func decodeAddress(latitude: Double, longitude: Double) {
        let reverseGeoCodeOption = BMKReverseGeoCodeSearchOption()
        reverseGeoCodeOption.location = CLLocationCoordinate2DMake(latitude, longitude)
        // 是否访问最新版行政区划数据（仅对中国数据生效）
        reverseGeoCodeOption.isLatestAdmin = true
        let flag = search.reverseGeoCode(reverseGeoCodeOption)
        if (flag) {
            print("逆geo检索发送成功")
        }  else  {
            print("逆geo检索发送失败")
        }
    }
    /// BMKGeoCodeSearchDelegate
    func onGetReverseGeoCodeResult(_ searcher: BMKGeoCodeSearch!, result:
        BMKReverseGeoCodeSearchResult!, errorCode error: BMKSearchErrorCode) {
        
        var poiList: [[String: String]] = [] /// 周边信息
        for (_, item) in result.poiList.enumerated() {
            poiList.append([
                "name": item.name ?? "",
                "uid": item.uid,
                "address": item.address
            ])
        }
        
        self.sendMapData(lat: "\(result.location.latitude)", long: "\(result.location.longitude)", describe: result.address, poiList: poiList, city: result.addressDetail.city)
    }
    
    /// 将数据传递给flutter
    func sendMapData(lat: String, long: String, describe: String, poiList: [[String: String]], city: String, _ district: String = "",  _ town: String = "",  _ street: String = "",  _ cityCode: String = "") {
        // 把定位信息传递给flutter
        print(describe)
        if (self.successClouse != nil) {
            self.successClouse!([
                "latitude": lat,
                "longitude": long,
                "describe": describe,
                "poiList": poiList,
                "district": district,
                "town": town,
                "street": street,
                "cityCode": cityCode,
                "requestId": self.requestLocationId,
                "city": city])
        }
    }
    func sendFail() {
        if (self.failClouse != nil) {
            self.failClouse!(self.requestLocationId)
        }
    }
}
