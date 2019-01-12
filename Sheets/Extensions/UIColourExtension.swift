//
//  UIColourExtension.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//
import UIKit

extension UIColor {
    static func rgb(red: Int, green: Int, blue: Int, alpha: Int) -> UIColor {
        return UIColor(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: CGFloat(alpha))
    }
}
