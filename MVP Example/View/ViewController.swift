//
//  ViewController.swift
//  MVP Example
//
//  Created by  Mr.Ki on 29.04.2022.
//

import UIKit

struct GameViewData {
    let name: String
}

class ViewController: UIViewController {

    var button = makeButton(withText: "Start Game")
    var label = makeLabel(withTitle: "Paused")

    lazy var presenter = Presenter(with: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }

    func layout() {
        button.addTarget(self, action: #selector(startGame(sender:)), for: .primaryActionTriggered)

        view.addSubview(button)
        view.addSubview(label)

        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.topAnchor.constraint(equalToSystemSpacingBelow: button.bottomAnchor, multiplier: 3).isActive = true
    }

    @objc func startGame(sender: Any?) {
        presenter.startGame()
    }
}

