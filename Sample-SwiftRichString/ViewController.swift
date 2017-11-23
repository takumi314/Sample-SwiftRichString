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

    private var label: UILabel!

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 0.0, y: 0.0, width: 250.0, height: 50.0)
        label = ViewController.instatiateLabel(rect: rect)
        label.center = view.center

        // CALayer
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 1.0
        // To add the label as view
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - UIViewController

    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { [unowned self] (context) in
            self.label.center = self.view.center
        }) { (contect) in
            //
        }
        super.willTransition(to: newCollection, with: coordinator)
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

