//
// Created by toshiba_osx on 2018/1/26.
// Copyright (c) 2018 toshiba_osx. All rights reserved.
//

import Foundation
extension String
{
    func asInt() -> Int
    {
        return Int(self)!
    }

    func asDouble() -> Double
    {
        return Double(self)!
    }

    func asFloat() -> Float
    {
        return Float(self)!
    }

    func asUrl() -> URL
    {
        return URL(string: self)!
    }



    func isIncludeChinese() -> Bool {
        for ch in self.unicodeScalars {
            // 中文字符范围：0x4e00 ~ 0x9fff
            if (0x4e00 < ch.value  && ch.value < 0x9fff) {
                return true
            }
        }
        return false
    }

    func transformToPinyin() -> String {
        let stringRef = NSMutableString(string: self) as CFMutableString
        // 转换为带音标的拼音
        CFStringTransform(stringRef,nil, kCFStringTransformToLatin, false);
        // 去掉音标
        CFStringTransform(stringRef, nil, kCFStringTransformStripCombiningMarks, false);
        let pinyin = stringRef as String;

        return pinyin
    }

    func transformToPinyinWithoutBlank() -> String {
        var pinyin = self.transformToPinyin()
        // 去掉空格
        pinyin = pinyin.replacingOccurrences(of: " ", with: "")
        return pinyin
    }

    func getPinyinHead() -> String {
        // 字符串转换为首字母大写
        let pinyin = self.transformToPinyin().capitalized
        var headPinyinStr = ""

        // 获取所有大写字母
        for ch in pinyin.characters {
            if ch <= "Z" && ch >= "A" {
                headPinyinStr.append(ch)
            }
        }
        return headPinyinStr
    }


    static func +(left:String,right:String) -> String
    {
        return left.appending(right)
    }


}


