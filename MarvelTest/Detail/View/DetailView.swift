//
//  DetailView.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class DetailView: UIViewController {
    private enum Constants {
        static let mainLogo = UIImage(named: "marvel_logo")
    }

    var presenter: DetailPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension DetailView: DetailViewProtocol {}
