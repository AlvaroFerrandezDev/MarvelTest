//
//  CatalogueRouter.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class CatalogueRouter {
    weak var view: CatalogueView!

    init(withView view: CatalogueView) {
        self.view = view
    }

    static func assembleModule(withinNavController: Bool = false) -> UIViewController {
        let viewController = viewControllerFromStoryboard()
        let router = CatalogueRouter(withView: viewController)
        let interactor = CatalogueInteractor()
        let presenter = CataloguePresenter(withView: viewController, interactor: interactor, router: router)

        viewController.presenter = presenter

        if withinNavController {
            let navigationController = UINavigationController(rootViewController: viewController)
            return navigationController
        }

        return viewController
    }

    static func viewControllerFromStoryboard() -> CatalogueView {
        return CatalogueView(nibName: "CatalogueView", bundle: Bundle.main)
    }
}

extension CatalogueRouter: CatalogueRouterProtocol {
}
