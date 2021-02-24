//
//  CatalogueView.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class CatalogueView: UIViewController {
    private enum Constants {
        static let mainLogo = UIImage(named: "marvel_logo")
    }

    var presenter: CataloguePresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CatalogueView: CatalogueViewProtocol {}
