//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//

import RxSwift

import RxCocoa

import UIKit


let adjCofY:CGFloat = 1

public protocol EasyAssign {
 func easyAssign(superView _superView: UIView?, backgroundColor _backgroundColor: UIColor) -> Self
}


public extension UIView {

    @discardableResult
 public   func easyAssign(superView _superView: UIView? = nil, backgroundColor _backgroundColor: UIColor = .white) -> Self {

        _superView?.addSubview(self)

        self.backgroundColor = _backgroundColor

        return self
    }


 public   func showBorder(_ color: UIColor = UIColor.red) {
        self.layer.borderColor = color.cgColor

        self.layer.borderWidth = 1.0
    }


 public   func showDebugBorder(_ color: UIColor = UIColor.red) {
//        if !layoutDebug {
//            return
//        }

        self.layer.borderColor = color.cgColor

        self.layer.borderWidth = 1.0
    }

}


extension UILabel {

    @discardableResult
 public   func easyAssign(text _text: String? = nil, textAlignment _textAlignment: NSTextAlignment = NSTextAlignment.center, fontSize _fontSize: CGFloat = 16, textColor _textColor: UIColor = .black) -> UILabel {


        if (_text != nil) {
            self.text = _text!
        }


        self.textAlignment = _textAlignment

        self.textColor = _textColor

        self.font = UIFont.systemFont(ofSize: _fontSize * adjCofY)

        return self
    }


}


extension UITextField {

    @discardableResult
 public   func easyAssign(text _text: String? = nil, placeholder _placeholder: String = "", textAlignment _textAlignment: NSTextAlignment = NSTextAlignment.center, fontSize _fontSize: CGFloat = 16, textColor _textColor: UIColor = .black) -> UITextField {


        if (_text != nil) {
            self.text = _text!
        }

        self.placeholder = _placeholder

        self.textAlignment = _textAlignment

        self.textColor = _textColor

        self.font = UIFont.systemFont(ofSize: _fontSize)

        return self
    }


}


extension UITextView {

    @discardableResult
 public   func easyAssign(text _text: String? = nil, placeholder _placeholder: String = "", textAlignment _textAlignment: NSTextAlignment = NSTextAlignment.center, fontSize _fontSize: CGFloat = 16, textColor _textColor: UIColor = .black) -> UITextView {


        if (_text != nil) {
            self.text = _text!
        }



        self.textAlignment = _textAlignment


        self.textColor = _textColor

        self.font = UIFont.systemFont(ofSize: _fontSize)

        return self
    }


}


public extension UIButton {
    @discardableResult
 public   func easyAssign(title _title: String? = nil, image _image: UIImage? = nil, backgroundImage _backgroundImage: UIImage? = nil, fontSize _fontSize: CGFloat = 17, textAlignment _textAlignment: NSTextAlignment = NSTextAlignment.center, color _color: UIColor? = nil, state: UIControlState = UIControlState.normal) -> UIButton {


        if (_title != nil) {
            self.setTitle(_title, for: state)
        }

        if (_color != nil) {
            self.setTitleColor(_color, for: state)
        }
        if (_backgroundImage != nil) {
            self.setBackgroundImage(_backgroundImage, for: state)
        }

        if (_image != nil) {
            self.setImage(_image, for: state)
        }

        self.titleLabel?.textAlignment = _textAlignment

        self.titleLabel?.font = UIFont.systemFont(ofSize: _fontSize )

        return self
    }


}
