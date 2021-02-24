//
//  DetailPresenter.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import Foundation

final class DetailPresenter {
    var view: DetailViewProtocol!
    let interactor: DetailInteractorProtocol
    let router: DetailRouterProtocol

    init(withView view: DetailViewProtocol, interactor: DetailInteractorProtocol, router: DetailRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension DetailPresenter: DetailPresenterProtocol {}
