//
//  SplashRouter.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class SplashRouter {
    weak var view: SplashView!

    init(withView view: SplashView) {
        self.view = view
    }

    static func assembleModule(withinNavController: Bool = false) -> UIViewController {
        let viewController = viewControllerFromStoryboard()
        let router = SplashRouter(withView: viewController)
        let interactor = SplashInteractor()
        let presenter = SplashPresenter(withView: viewController, interactor: interactor, router: router)

        viewController.presenter = presenter

        if withinNavController {
            let navigationController = UINavigationController(rootViewController: viewController)
            return navigationController
        }

        return viewController
    }

    static func viewControllerFromStoryboard() -> SplashView {
        return SplashView(nibName: "SplashView", bundle: Bundle.main)
    }
}

extension SplashRouter: SplashRouterProtocol {
    func presentHome() {
        let screen = HomeRouter.assembleModule(withinNavController: true)

        UIApplication.shared.windows.first?.rootViewController = screen
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}
