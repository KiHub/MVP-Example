//
//  Factory.swift
//  MVP Example
//
//  Created by  Mr.Ki on 29.04.2022.
//

import UIKit

func makeButton(withText text: String) -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)
    button.titleLabel?.adjustsFontSizeToFitWidth = true
    button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
    button.backgroundColor = .systemBlue
    button.layer.cornerRadius = 8
    return button
}

func makeSymbolButton(systemName: String, target: Any, selector: Selector) -> UIButton {
    let configuration = UIImage.SymbolConfiguration(scale: .large)
    let image = UIImage(systemName: systemName, withConfiguration: configuration)

    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(target, action: selector, for: .primaryActionTriggered)
    button.setImage(image, for: .normal)
    button.imageView?.contentMode = .scaleAspectFit

    return button
}

func makeLabel() -> UILabel {
    return makeLabel(withTitle: "")
}

func makeLabel(withTitle title: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = title
    label.textAlignment = .center
    label.textColor = .black
    label.numberOfLines = 0
    label.adjustsFontSizeToFitWidth = true

    return label
}
