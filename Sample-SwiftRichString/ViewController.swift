//
//  ViewController.swift
//  Sample-SwiftRichString
//
//  Created by NishiokaKohei on 2017/11/19.
//  Copyright © 2017年 Kohey.Nishioka. All rights reserved.
//

import UIKit
import SwiftRichString

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - SwiftRichString configurations

    func describe() -> NSMutableAttributedString {
        //  To create a set of style
        let style = Style("super", { (marker) in

            // フォント指定
            marker.font = FontAttribute(.TimesNewRomanPS_BoldItalicMT, size: 30)

            // 下線の指定
            marker.underline = UnderlineAttribute(color: .red, style: NSUnderlineStyle.styleDouble)

            // 文字色の指定
            marker.color = .darkText

            // テキスト位置の指定
            marker.align = .center
        })

        // To set the style into String
        let text = "Sameple😎だよーん".set(styles: style)

        return text
    }

    // MARK: - Others

    static func instatiateLabel(rect: CGRect) -> UILabel {
        return UILabel(frame: rect)
    }

}

