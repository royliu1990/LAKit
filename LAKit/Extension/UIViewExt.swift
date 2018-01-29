//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//

import UIKit

public extension UIView
{
   public  var x: CGFloat {

        get {

            return frame.origin.x
        }

        set(newVal) {

            var tmpFrame: CGRect = frame
            tmpFrame.origin.x = newVal
            frame = tmpFrame
        }
    }

    // y
  public  var y: CGFloat {

        get {

            return frame.origin.y
        }

        set(newVal) {

            var tmpFrame: CGRect = frame
            tmpFrame.origin.y = newVal
            frame = tmpFrame
        }
    }

    // height
  public   var height: CGFloat {

        get {

            return frame.size.height
        }

        set(newVal) {

            var tmpFrame: CGRect = frame
            tmpFrame.size.height = newVal
            frame = tmpFrame
        }
    }

    // width
  public  var width: CGFloat {

        get {

            return frame.size.width
        }

        set(newVal) {

            var tmpFrame: CGRect = frame
            tmpFrame.size.width = newVal
            frame = tmpFrame
        }
    }

    // left
   public var left: CGFloat {

        get {

            return x
        }

        set(newVal) {

            x = newVal
        }
    }

    // right
  public  var right: CGFloat {

        get {

            return x + width
        }

        set(newVal) {

            x = newVal - width
        }
    }

    // top
   public var top: CGFloat {

        get {

            return y
        }

        set(newVal) {

            y = newVal
        }
    }

    // bottom
  public  var bottom: CGFloat {

        get {

            return y + height
        }

        set(newVal) {

            y = newVal - height
        }
    }

  public  var centerX: CGFloat {

        get {

            return center.x
        }

        set(newVal) {

            center = CGPoint(x: newVal, y: center.y)
        }
    }

  public  var centerY: CGFloat {

        get {

            return center.y
        }

        set(newVal) {

            center = CGPoint(x: center.x, y: newVal)
        }
    }

   public var middleX: CGFloat {

        get {

            return width / 2
        }
    }

   public var middleY: CGFloat {

        get {

            return height / 2
        }
    }

   public var middlePoint: CGPoint {

        get {

            return CGPoint(x: middleX, y: middleY)
        }
    }

  public  var frameTuple:(Int,Int,Int,Int){
        set{
            frame = CGRect(newValue)
        }
        get{
            return (frame.origin.x.asInt(),frame.origin.y.asInt(),frame.size.width.asInt(),frame.size.height.asInt())
        }
    }

   public var sizeTuple:(Int,Int){
        set{
            frame.size = CGSize(newValue)
        }
        get{
            return (frame.size.width.asInt(),frame.size.height.asInt())
        }
    }


}
