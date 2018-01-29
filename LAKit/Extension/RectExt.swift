//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//

import UIKit

public extension CGRect
{
    init(_ rect:(Int,Int,Int,Int))
    {
        self.init(x: rect.0, y: rect.1, width: rect.2, height: rect.3)
    }

    init(_ rect:[Int])
    {
        self.init(x: rect[0], y: rect[1], width: rect[2], height: rect[3])
    }

    init(_ rect:(CGPoint,CGSize))
    {
        self.init(origin: rect.0, size: rect.1)
    }

 public   func asUIView() -> UIView
    {
        return UIView(frame: self)
    }

 public   func asUILabel() -> UILabel
    {
        return UILabel(frame: self)
    }

 public   func asUIButton() -> UIButton
    {
        return UIButton(frame: self)
    }


}

public extension CGSize
{
    init(_ size:(Int,Int))
    {
        self.init(width: size.0, height: size.1)
    }

    init(_ size:[Int])
    {
        self.init(width: size[0], height: size[1])
    }

}

public extension CGPoint
{
    init(_ point:(Int,Int))
    {
        self.init(x: point.0, y: point.1)
    }

    init(_ point:[Int])
    {
        self.init(x: point[0], y: point[1])
    }

 public   func makeDisc(_ radius:Int) -> UIView
    {
        let disc = UIView()

        disc.center = self

        disc.sizeTuple = (radius * 2,radius * 2)

        disc.layer.cornerRadius = radius.asCGFloat()

        return disc
    }

    static func -(left:CGPoint,right:CGPoint) -> CGVector
    {
        return CGVector(dx: right.x - left.x, dy: right.y - left.y)
    }

    static func +(left:CGPoint,right:CGPoint) -> CGVector
    {
        return CGVector(dx: right.x + left.x, dy: right.y + left.y)
    }
}
