import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    private let channelName = "com.example.app/native"
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
     if let controller = window?.rootViewController as? FlutterViewController {
            let channel = FlutterMethodChannel(name: channelName,
                                               binaryMessenger: controller.binaryMessenger)
            channel.setMethodCallHandler { [weak self] (call, result) in
                if call.method == "getPlatformVersion" {
                    self?.receiveNativeData(result: result)
                } else {
                    result(FlutterMethodNotImplemented)
                }
            }
        }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func receiveNativeData(result: FlutterResult) {
        // 返回 iOS 设备系统版本
        result("iOS " + UIDevice.current.systemVersion)
    }
}
