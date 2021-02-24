//
//  SplashPresenter.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import Foundation

final class SplashPresenter {
    var view: SplashViewProtocol!
    let interactor: SplashInteractorProtocol
    let router: SplashRouterProtocol

    init(withView view: SplashViewProtocol, interactor: SplashInteractorProtocol, router: SplashRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension SplashPresenter: SplashPresenterProtocol {
    func presentHome() {
        router.presentHome()
    }
}
