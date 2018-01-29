//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//
import UIKit
import SnapKit
//protocol LALayout {
//
// public   func leftAhead(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func leftAheadSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func rightBehind(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func rightBehindSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func aboveSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func below(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func belowSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func centerXto(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func centerXtoSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func centerYto(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func centerYtoSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func leftTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func leftToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func rightTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func rightToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func topTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func topToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func bottomTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func bottomToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func widthTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func widthToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func heightTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func heightToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func sizeTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func sizeToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func centerTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func centerToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func edgesTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func edgesToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func heightEqual(value: CGFloat) -> Self
//
// public   func widthEqual(value: CGFloat) -> Self
//
// public   func sizeEqual(value: CGFloat) -> Self
//
//
//    //UPDATE CONSTRAINTS
// public   func updateLeftToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func updateTopToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func updateRightToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func updateBottomToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
// public   func updateHeight(value: CGFloat) -> Self
//
// public   func updateWidth(value:CGFloat) -> Self
//
//}


public extension UIView {



 private func preprocessInEasyLayout()
    {
        if self.translatesAutoresizingMaskIntoConstraints
        {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    @discardableResult
 public   func leftAhead(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.right.equalTo(view.snp.left).multipliedBy(multipliedBy).offset(offset )

        }

        return self
    }
    @discardableResult
 public   func leftAheadSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.leftAhead(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
 public   func rightBehind(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.left.equalTo(view.snp.right).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

 public   func rightBehindSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.rightBehind(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

 public   func above(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.bottom.equalTo(view.snp.top).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }


 public   func aboveSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.above(view: self.superview!, offset: offset , multipliedBy: multipliedBy)
    }
    @discardableResult
 public   func below(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.top.equalTo(view.snp.bottom).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func belowSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.below(view: self.superview!, offset: offset , multipliedBy: multipliedBy)
    }
    @discardableResult
 public   func centerXto(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.centerX.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }
    @discardableResult
 public   func centerXtoSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.centerXto(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
 public   func centerYto(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.centerY.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func centerYtoSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.centerYto(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
 public   func leftTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {


        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.left.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func leftToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.leftTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
 public   func rightTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.right.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func rightToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.rightTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
 public   func topTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.top.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func topToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.topTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
 public   func bottomTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.bottom.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func bottomToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.bottomTo(view: self.superview!, offset: offset , multipliedBy: multipliedBy)
    }

 public   func end() {

    }

    @discardableResult
 public   func widthTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.width.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }
    @discardableResult
 public   func widthToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.widthTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
 public   func heightTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.height.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }
    @discardableResult
 public   func heightToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.heightTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
 public   func sizeTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        return self.widthTo(view: view, offset: offset, multipliedBy: multipliedBy).heightTo(view: view, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
 public   func sizeToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.sizeTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
 public   func centerTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        return self.centerXto(view: view, offset: offset, multipliedBy: multipliedBy).centerYto(view: view, offset: offset, multipliedBy: multipliedBy)

    }
    @discardableResult
 public   func centerToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.centerTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
 public   func edgesTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        return self.centerTo(view: view).sizeTo(view: view, offset: offset, multipliedBy: multipliedBy)

    }
    @discardableResult
 public   func edgesToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.edgesTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
 public   func heightEqual(value: CGFloat) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.height.equalTo(value )

        }
        return self
    }

    @discardableResult
 public   func widthEqual(value: CGFloat) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.width.equalTo(value )

        }
        return self
    }

    @discardableResult
 public   func sizeEqual(value: CGFloat) -> Self {

        self.preprocessInEasyLayout()

        return self.widthEqual(value: value).heightEqual(value: value)


    }




    //UPDATE CONSTRAINTS
    @discardableResult
 public   func updateLeftToSuperView(offset: CGFloat, multipliedBy: CGFloat = 1.0) -> Self {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.left.equalTo(self.superview!).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func updateRightToSuperView(offset: CGFloat, multipliedBy: CGFloat = 1.0) -> Self {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.right.equalTo(self.superview!).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func updateTopToSuperView(offset: CGFloat, multipliedBy: CGFloat = 1.0) -> Self {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.top.equalTo(self.superview!).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
 public   func updateBottomToSuperView(offset: CGFloat, multipliedBy: CGFloat = 1.0) -> Self
    {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.top.equalTo(self.superview!).multipliedBy(multipliedBy).offset(offset)

        }
        return self
    }

    @discardableResult
 public   func updateHeight(value: CGFloat) -> Self {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.height.equalTo(value)

        }
        return self
    }

    @discardableResult
 public   func updateWidth(value:CGFloat) -> Self
    {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.width.equalTo(value)

        }
        return self
    }


    @discardableResult
 public   func updateSize(value:CGFloat) -> Self
    {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.width.equalTo(value)
            make.height.equalTo(value)

        }
        return self
    }

    // public   func updateTop(view:UIView,offset: CGFloat, multipliedBy: CGFloat) -> Self
    //    {
    //        self.preprocessInEasyLayout()
    //
    //        self.snp.remakeConstraints {
    //
    //            make in
    //
    //            make.top.equalTo(view).multipliedBy(multipliedBy).offset(offset)
    //
    //        }
    //        return self
    //    }
}
