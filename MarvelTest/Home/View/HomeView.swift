//
//  HomeView.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class HomeView: UIViewController {
    private enum Constants {
        static let mainLogo = UIImage(named: "marvel_logo")
        static let lightPurple1 = UIColor(named: "lightPurple1")
        static let purple = UIColor(named: "purple")
        static let allSuperHeroesButtonTitle: String = "Ver todos lo superhéroes"
        static let searchSuperHeroeButtonTitle: String = "Buscar superhéroes"
        static let accentColor = UIColor(named: "accentColor")
        static let cornerCurve: CGFloat = 8.0
    }

    var presenter: HomePresenterProtocol!

    @IBOutlet private var allSuperHeroesButton: UIButton!
    @IBOutlet private var searchSuperHeroeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()
        renderUI()
        addGestures()
    }

    private func setupNavigationBar() {
        navigationController?.navigationBar.isHidden = false

        let imageView = UIImageView(image: Constants.mainLogo)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = false
        navigationItem.titleView = imageView

        navigationController?.navigationBar.barTintColor = Constants.purple
    }

    private func renderUI() {
        view.backgroundColor = Constants.lightPurple1

        allSuperHeroesButton.backgroundColor = Constants.purple
        allSuperHeroesButton.setTitle(Constants.allSuperHeroesButtonTitle, for: .normal)
        allSuperHeroesButton.setTitleColor(Constants.accentColor, for: .normal)
        allSuperHeroesButton.layer.cornerRadius = Constants.cornerCurve

        searchSuperHeroeButton.backgroundColor = Constants.purple
        searchSuperHeroeButton.setTitle(Constants.searchSuperHeroeButtonTitle, for: .normal)
        searchSuperHeroeButton.setTitleColor(Constants.accentColor, for: .normal)
        searchSuperHeroeButton.layer.cornerRadius = Constants.cornerCurve
    }
    
    private func addGestures(){
        let allSuperHeroesButtonActionGesture = UITapGestureRecognizer(target: self, action: #selector(allSuperHeroesButtonAction))
        allSuperHeroesButton.addGestureRecognizer(allSuperHeroesButtonActionGesture)
        allSuperHeroesButton.isUserInteractionEnabled = true

        let searchSuperHeroeButtonActionGesture = UITapGestureRecognizer(target: self, action: #selector(searchSuperHeroeButtonAction))
        searchSuperHeroeButton.isUserInteractionEnabled = true
        searchSuperHeroeButton.addGestureRecognizer(searchSuperHeroeButtonActionGesture)
    }
    
    @IBAction private func allSuperHeroesButtonAction(){
        presenter.showAllSuperHeroes()
    }
    
    @objc private func searchSuperHeroeButtonAction(){
        presenter.searchSuperHeroes()
    }
}

extension HomeView: HomeViewProtocol {}
