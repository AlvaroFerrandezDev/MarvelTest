//
//  SearchPresenter.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import Foundation

final class SearchPresenter {
    var view: SearchViewProtocol!
    let interactor: SearchInteractorProtocol
    let router: SearchRouterProtocol

    init(withView view: SearchViewProtocol, interactor: SearchInteractorProtocol, router: SearchRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension SearchPresenter: SearchPresenterProtocol {}
