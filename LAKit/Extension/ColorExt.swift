//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//

import UIKit

extension UIColor {

    //用数值初始化颜色，便于生成设计图上标明的十六进制颜色
    convenience init(_ valueRGB: UInt,_ alpha: CGFloat = 1.0) {
        self.init(red: CGFloat((valueRGB & 0xFF0000) >> 16) / 255.0, green: CGFloat((valueRGB & 0x00FF00) >> 8) / 255.0, blue: CGFloat(valueRGB & 0x0000FF) / 255.0, alpha: alpha)
    }
}