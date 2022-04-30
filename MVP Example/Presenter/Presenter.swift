//
//  Presenter.swift
//  MVP Example
//
//  Created by  Mr.Ki on 29.04.2022.
//

import Foundation

protocol PresenterView: AnyObject {
    func updateGame(_ model: GameViewData)
}

class Presenter {

    weak var view: PresenterView?

    init(with view: PresenterView) {
        self.view = view
    }

    let spaceInvaders = Game(name: "Space Invaders", year: "1978", author: "Tomohiro Nishikado")

    @objc func startGame() {
        let game = GameViewData(name: spaceInvaders.name)
        view?.updateGame(game)
    }
}

extension ViewController: PresenterView {

    func updateGame(_ model: GameViewData) {
        label.text = model.name
        self.view.backgroundColor = .yellow
    }

}
