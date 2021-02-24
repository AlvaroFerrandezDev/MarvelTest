//
//  SearchView.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class SearchView: UIViewController {
    private enum Constants {
        static let mainLogo = UIImage(named: "marvel_logo")
    }

    var presenter: SearchPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SearchView: SearchViewProtocol {}
