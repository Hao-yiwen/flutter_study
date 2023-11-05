import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    private let channelName = "com.example.app/native"
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      guard let controller = window?.rootViewController as? FlutterViewController else {
        fatalError("rootViewController is not type FlutterViewController")
      }
      let channel = FlutterMethodChannel(name: channelName,
                                            binaryMessenger: controller.binaryMessenger)
      channel.setMethodCallHandler { [weak self] (call, result) in
          if call.method == "getPlatformVersion" {
              self?.receiveNativeData(result: result)
          } else {
              result(FlutterMethodNotImplemented)
          }
      }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func receiveNativeData(result: FlutterResult) {
        // 模拟从 iOS 平台获取数据
        result("Native data from iOS!")
    }
}
