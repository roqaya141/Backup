//
//  ColorExtention.swift
//  FinalProjectBM
//
//  Created by Abdelrahman Amer on 02/08/2024.
//

import Foundation
import UIKit
//
extension UIColor {
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        let alpha = CGFloat(1.0)

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

//
//extension UIColor {
//    convenience init(hex: String) {
//        let hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
//        var rgb: UInt64 = 0
//        Scanner(string: hexString).scanHexInt64(&rgb)
//        
//        let red = CGFloat((rgb >> 16) & 0xFF) / 255.0
//        let green = CGFloat((rgb >> 8) & 0xFF) / 255.0
//        let blue = CGFloat(rgb & 0xFF) / 255.0
//        
//        self.init(red: red, green: green, blue: blue, alpha: 1.0)
//    }
//}
