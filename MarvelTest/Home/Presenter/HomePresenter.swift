//
//  HomePresenter.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import Foundation

final class HomePresenter {
    var view: HomeViewProtocol!
    let interactor: HomeInteractorProtocol
    let router: HomeRouterProtocol

    init(withView view: HomeViewProtocol, interactor: HomeInteractorProtocol, router: HomeRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension HomePresenter: HomePresenterProtocol {
    func searchSuperHeroes() {
        router.searchSuperHeroes()
    }
    
    func showAllSuperHeroes() {
        router.showAllSuperHeroes()
    }
}
