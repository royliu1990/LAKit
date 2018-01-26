//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//

import UIKit

extension Int{
    func asDouble() -> Double {
        return Double(self)
    }

    func asFloat() -> Float{
        return Float(self)
    }

    func asString() -> String
    {
        return "\(self)"
    }

    func asCGFloat() -> CGFloat
    {

        return CGFloat(self)
    }

}

extension Float{
    func asDouble() -> Double {
        return Double(self)
    }

    func asInt() -> Int{
        return Int(self)
    }

    func asString() -> String
    {
        return "\(self)"
    }

    func asCGFloat() -> CGFloat
    {
        return CGFloat(self)
    }
}

extension Double{
    func asFloat() -> Float {
        return Float(self)
    }

    func asInt() -> Int{
        return Int(self)
    }

    func asString() -> String
    {
        return "\(self)"
    }

    func asCGFloat() -> CGFloat
    {
        return CGFloat(self)
    }
}

extension CGFloat{
    func asFloat() -> Float {
        return Float(self)
    }

    func asInt() -> Int{
        return Int(self)
    }

    func asString() -> String
    {
        return "\(self)"
    }

    func asDouble() -> Double
    {
        return Double(self)
    }
}

