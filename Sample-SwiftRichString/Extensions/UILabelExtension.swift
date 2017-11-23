//
//  UILabelExtension.swift
//  Sample-SwiftRichString
//
//  Created by NishiokaKohei on 2017/11/23.
//  Copyright © 2017年 Kohey.Nishioka. All rights reserved.
//

import UIKit
import SwiftRichString

extension UILabel {

    public func center(handler: @escaping () -> (CGPoint) ) -> Self {
        self.center = handler()
        return self
    }

    public func setText(_ text: String, with styles: Style) -> Void {
        self.attributedText = text.set(styles: styles)
    }

    public func layer(colour: UIColor = UIColor.clear, width: CGFloat = 0.0) -> Void {
        self.layer.borderColor = colour.cgColor
        self.layer.borderWidth = width
    }

    public func border(handler: @escaping (CALayer) -> () ) -> Self {
        handler(self.layer)
        return self
    }

    public func setText(_ text: String, styleMaker: ((_ maker: Style) -> (Void))? = nil) -> Void {
        guard let styleMaker = styleMaker else {
            self.text = text
            return
        }
        self.setStyledText(text, styles: Style(styleMaker))
    }

    public func setStyledText(_ text: String, styles: Style...) -> Void {
        self.attributedText = text.set(stylesArray: styles)
    }

}
