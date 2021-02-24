//
//  SearchSearch.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class SearchRouter {
    weak var view: SearchView!

    init(withView view: SearchView) {
        self.view = view
    }

    static func assembleModule(withinNavController: Bool = false) -> UIViewController {
        let viewController = viewControllerFromStoryboard()
        let router = SearchRouter(withView: viewController)
        let interactor = SearchInteractor()
        let presenter = SearchPresenter(withView: viewController, interactor: interactor, router: router)

        viewController.presenter = presenter

        if withinNavController {
            let navigationController = UINavigationController(rootViewController: viewController)
            return navigationController
        }

        return viewController
    }

    static func viewControllerFromStoryboard() -> SearchView {
        return SearchView(nibName: "SearchView", bundle: Bundle.main)
    }
}

extension SearchRouter: SearchRouterProtocol {
}
