//
//  RichStringConfig.swift
//  Sample-SwiftRichString
//
//  Created by NishiokaKohei on 2017/11/24.
//  Copyright © 2017年 Kohey.Nishioka. All rights reserved.
//

import SwiftRichString

struct RichStringConfig {

    static var style1: Style {
        return Style("style1") { (maker) in
            // フォント指定
            maker.font = FontAttribute(.TimesNewRomanPS_BoldItalicMT, size: 20)
            // 下線の指定
            maker.underline = UnderlineAttribute(color: .red, style: NSUnderlineStyle.styleDouble)
            // 文字色の指定
            maker.color = .darkText
            // テキスト位置の指定
            maker.align = .center
        }
    }

    static var style2: Style {
        return Style("style2") { (maker) in
                maker.font = FontAttribute(.Optima_BoldItalic, size: 16)
                maker.underline = UnderlineAttribute(color: .green, style: NSUnderlineStyle.styleSingle)
                maker.color = .purple
                maker.align = .center
        }
    }

    var style3: Style {
        return Style("style3") { (maker) in
            maker.font = FontAttribute(.CourierNewPS_ItalicMT, size: 25)
            maker.color = .red
        }
    }

}
