//
//  GradientView.swift
//  FinalProjectBM
//
//  Created by Abdelrahman Amer on 31/07/2024.
//

import UIKit

extension UIView {
    func addGradientWithColor(view:UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor(red: 1.0, green: 0.90, blue: 0.93, alpha: 1.0).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
