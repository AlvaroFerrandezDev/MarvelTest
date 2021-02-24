//
//  DetailRouter.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class DetailRouter {
    weak var view: DetailView!

    init(withView view: DetailView) {
        self.view = view
    }

    static func assembleModule(withinNavController: Bool = false) -> UIViewController {
        let viewController = viewControllerFromStoryboard()
        let router = DetailRouter(withView: viewController)
        let interactor = DetailInteractor()
        let presenter = DetailPresenter(withView: viewController, interactor: interactor, router: router)

        viewController.presenter = presenter

        if withinNavController {
            let navigationController = UINavigationController(rootViewController: viewController)
            return navigationController
        }

        return viewController
    }

    static func viewControllerFromStoryboard() -> DetailView {
        return DetailView(nibName: "DetailView", bundle: Bundle.main)
    }
}

extension DetailRouter: DetailRouterProtocol {
}
