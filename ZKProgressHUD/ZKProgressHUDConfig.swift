//
//  ZKProgressHUDConfig.swift
//  ZKProgressHUD
//
//  Created by 王文壮 on 2017/4/19.
//  Copyright © 2017年 WangWenzhuang. All rights reserved.
//

import UIKit

/// ZKProgressHUD 全局配置
final class ZKProgressHUDConfig {
    static var margin: CGFloat = 20
    static var maskStyle: MaskStyle = .visible
    static var animationShowStyle: AnimationShowStyle = .fade
    static var maskBackgroundColor: UIColor = .black
    static var maskBackgroundAlpha: CGFloat = 0.3
    static var foregroundColor: UIColor = .white
    static var effectStyle: HUDEffectStyle = .dark
    static var effectAlpha: CGFloat = 1
    static var backgroundColor: UIColor = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.8)
    static var font: UIFont = UIFont.boldSystemFont(ofSize: 15)
    static var cornerRadius: CGFloat = 6
    static var animationStyle: AnimationStyle = .circle
    static var autoDismissDelay: Double = 2
    
    static let restorationIdentifier: String = "ZKProgressHUD"
    static let ZKNSNotificationDismiss = NSNotification.Name(rawValue: "ZKNSNotificationDismiss")

#if SWIFT_PACKAGE
    private static let imageBundle = Bundle(url: Bundle.module.url(forResource: "ZKProgressHUD", withExtension: "bundle")!)
#else
    private static let imageBundle = Bundle(url: Bundle(for: ZKProgressHUD.self).url(forResource: "ZKProgressHUD", withExtension: "bundle")!)
#endif

    static func bundleImage(_ imageType: ImageType) -> UIImage? {
        var imageName: String!
        switch imageType {
        case .mask:
            imageName = "angle-mask"
        case .info:
            imageName = "info"
        case .error:
            imageName = "error"
        case .success:
            imageName = "success"
        }
        return UIImage(contentsOfFile: (imageBundle?.path(forResource: imageName, ofType: "png"))!)
    }
}
typealias Config = ZKProgressHUDConfig
