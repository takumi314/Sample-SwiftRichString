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
        label.layer(colour: .black, width: 1.0)

        useLabelExteneion()

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
        return "Sameple😎だよーん".set(styles: RichStringConfig.style1)
    }

    // MARK: - UILabelExtenions

    func useLabelExteneion() -> Void {
        label.setText("UILabelを拡張して表示してみたよ✌️") { (maker) in
            maker.font = FontAttribute(.Optima_BoldItalic, size: 16)
            maker.underline = UnderlineAttribute(color: .green, style: NSUnderlineStyle.styleSingle)
            maker.color = .purple
            maker.align = .center
        }
    }

    // MARK: - Others

    static func instatiateLabel(rect: CGRect) -> UILabel {
        return UILabel(frame: rect)
    }

}

