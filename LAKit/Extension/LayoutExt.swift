//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//
import UIKit
import SnapKit
//protocol LALayout {
//
//    func leftAhead(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func leftAheadSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func rightBehind(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func rightBehindSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func aboveSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func below(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func belowSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func centerXto(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func centerXtoSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func centerYto(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func centerYtoSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func leftTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func leftToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func rightTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func rightToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func topTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func topToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func bottomTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func bottomToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func widthTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func widthToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func heightTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func heightToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func sizeTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func sizeToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func centerTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func centerToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func edgesTo(view: UIView, offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func edgesToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func heightEqual(value: CGFloat) -> Self
//
//    func widthEqual(value: CGFloat) -> Self
//
//    func sizeEqual(value: CGFloat) -> Self
//
//
//    //UPDATE CONSTRAINTS
//    func updateLeftToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func updateTopToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func updateRightToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func updateBottomToSuperView(offset: CGFloat, multipliedBy: CGFloat) -> Self
//
//    func updateHeight(value: CGFloat) -> Self
//
//    func updateWidth(value:CGFloat) -> Self
//
//}


extension UIView {



    private func preprocessInEasyLayout()
    {
        if self.translatesAutoresizingMaskIntoConstraints
        {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    @discardableResult
    func leftAhead(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.right.equalTo(view.snp.left).multipliedBy(multipliedBy).offset(offset )

        }

        return self
    }
    @discardableResult
    func leftAheadSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.leftAhead(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
    func rightBehind(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.left.equalTo(view.snp.right).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    func rightBehindSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.rightBehind(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    func above(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.bottom.equalTo(view.snp.top).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }


    func aboveSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.above(view: self.superview!, offset: offset , multipliedBy: multipliedBy)
    }
    @discardableResult
    func below(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.top.equalTo(view.snp.bottom).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func belowSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.below(view: self.superview!, offset: offset , multipliedBy: multipliedBy)
    }
    @discardableResult
    func centerXto(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.centerX.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }
    @discardableResult
    func centerXtoSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.centerXto(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
    func centerYto(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.centerY.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func centerYtoSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.centerYto(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
    func leftTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {


        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.left.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func leftToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.leftTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
    func rightTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.right.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func rightToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.rightTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
    func topTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.top.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func topToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.topTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
    func bottomTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.bottom.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func bottomToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.bottomTo(view: self.superview!, offset: offset , multipliedBy: multipliedBy)
    }

    func end() {

    }

    @discardableResult
    func widthTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.width.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }
    @discardableResult
    func widthToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.widthTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
    func heightTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.height.equalTo(view).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }
    @discardableResult
    func heightToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.heightTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
    func sizeTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        return self.widthTo(view: view, offset: offset, multipliedBy: multipliedBy).heightTo(view: view, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
    func sizeToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.sizeTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
    func centerTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        return self.centerXto(view: view, offset: offset, multipliedBy: multipliedBy).centerYto(view: view, offset: offset, multipliedBy: multipliedBy)

    }
    @discardableResult
    func centerToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.centerTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }
    @discardableResult
    func edgesTo(view: UIView, offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {

        return self.centerTo(view: view).sizeTo(view: view, offset: offset, multipliedBy: multipliedBy)

    }
    @discardableResult
    func edgesToSuperView(offset: CGFloat = 0, multipliedBy: CGFloat = 1) -> Self {
        return self.edgesTo(view: self.superview!, offset: offset, multipliedBy: multipliedBy)
    }

    @discardableResult
    func heightEqual(value: CGFloat) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.height.equalTo(value )

        }
        return self
    }

    @discardableResult
    func widthEqual(value: CGFloat) -> Self {

        self.preprocessInEasyLayout()

        self.snp.makeConstraints {

            make in

            make.width.equalTo(value )

        }
        return self
    }

    @discardableResult
    func sizeEqual(value: CGFloat) -> Self {

        self.preprocessInEasyLayout()

        return self.widthEqual(value: value).heightEqual(value: value)


    }




    //UPDATE CONSTRAINTS
    @discardableResult
    func updateLeftToSuperView(offset: CGFloat, multipliedBy: CGFloat = 1.0) -> Self {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.left.equalTo(self.superview!).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func updateRightToSuperView(offset: CGFloat, multipliedBy: CGFloat = 1.0) -> Self {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.right.equalTo(self.superview!).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func updateTopToSuperView(offset: CGFloat, multipliedBy: CGFloat = 1.0) -> Self {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.top.equalTo(self.superview!).multipliedBy(multipliedBy).offset(offset )

        }
        return self
    }

    @discardableResult
    func updateBottomToSuperView(offset: CGFloat, multipliedBy: CGFloat = 1.0) -> Self
    {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.top.equalTo(self.superview!).multipliedBy(multipliedBy).offset(offset)

        }
        return self
    }

    @discardableResult
    func updateHeight(value: CGFloat) -> Self {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.height.equalTo(value)

        }
        return self
    }

    @discardableResult
    func updateWidth(value:CGFloat) -> Self
    {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.width.equalTo(value)

        }
        return self
    }


    @discardableResult
    func updateSize(value:CGFloat) -> Self
    {
        self.preprocessInEasyLayout()

        self.snp.updateConstraints {

            make in

            make.width.equalTo(value)
            make.height.equalTo(value)

        }
        return self
    }

    //    func updateTop(view:UIView,offset: CGFloat, multipliedBy: CGFloat) -> Self
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