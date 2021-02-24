//
//  CataloguePresenter.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import Foundation

final class CataloguePresenter {
    var view: CatalogueViewProtocol!
    let interactor: CatalogueInteractorProtocol
    let router: CatalogueRouterProtocol

    init(withView view: CatalogueViewProtocol, interactor: CatalogueInteractorProtocol, router: CatalogueRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension CataloguePresenter: CataloguePresenterProtocol {}
