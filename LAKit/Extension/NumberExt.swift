//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//

import UIKit

public extension Int{
 public   func asDouble() -> Double {
        return Double(self)
    }

 public   func asFloat() -> Float{
        return Float(self)
    }

 public   func asString() -> String
    {
        return "\(self)"
    }

 public   func asCGFloat() -> CGFloat
    {

        return CGFloat(self)
    }

}

public extension Float{
 public   func asDouble() -> Double {
        return Double(self)
    }

 public   func asInt() -> Int{
        return Int(self)
    }

 public   func asString() -> String
    {
        return "\(self)"
    }

 public   func asCGFloat() -> CGFloat
    {
        return CGFloat(self)
    }
}

public extension Double{
 public   func asFloat() -> Float {
        return Float(self)
    }

 public   func asInt() -> Int{
        return Int(self)
    }

 public   func asString() -> String
    {
        return "\(self)"
    }

 public   func asCGFloat() -> CGFloat
    {
        return CGFloat(self)
    }
}

public extension CGFloat{
 public   func asFloat() -> Float {
        return Float(self)
    }

 public   func asInt() -> Int{
        return Int(self)
    }

 public   func asString() -> String
    {
        return "\(self)"
    }

 public   func asDouble() -> Double
    {
        return Double(self)
    }
}

