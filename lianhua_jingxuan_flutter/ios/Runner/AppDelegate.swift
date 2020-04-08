import UIKit
import Flutter
import UpdateManager

let FlutterMethodChannel_Name = "lianhua_jingxuan_flutter/mutual"
let FlutterEventChannel_Name = "lianhua_jingxuan_flutter/event"
let BaiduAk = "Ljas7q9oLFKAAPupEVjb7Ga34CxQP8AH"

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    GeneratedPluginRegistrant.register(with: self)
        
    BaiduMapViewPlugin.registerWith(registry:  self)
    
    #if DEBUG
        UpdateManager.shared.setThemeColor(UIColor.init(red: 0, green: 101/255, blue: 255/255, alpha: 1))
        UpdateManager.shared.checkVersionUpdate()
    #endif
    
        
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
