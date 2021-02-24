//
//  SplashView.swift
//  MarvelTest
//
//  Created by Álvaro Ferrández Gómez on 24/2/21.
//

import UIKit

final class SplashView: UIViewController {
    private enum Constants {
        static let mainMarvelColor = UIColor(named: "mainRed")
        static let mainMarvelImage = UIImage(named: "marvel_logo")
        static let animationSeconds: Int = 2
        static let unitSecond: Int = 1
    }

    var presenter: SplashPresenterProtocol!

    @IBOutlet private var mainSplashImage: UIImageView!
    
    private var timer: Timer?
    private var timeCount: Int = 0
   
    // MARK: - Lyfecicle methods

    override func viewDidLoad() {
        super.viewDidLoad()
       
        hideNavigationBar()
        renderUI()
        setTimerAndAnimateLaunchScreen()
    }
    
    // MARK: - NavigationBar method

    private func hideNavigationBar() {
        navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - Render UI
    
    private func renderUI() {
        mainSplashImage.image = Constants.mainMarvelImage
        view.backgroundColor = Constants.mainMarvelColor
    }
    
    private func setTimerAndAnimateLaunchScreen() {
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(Constants.unitSecond), target: self, selector: #selector(checkForTimerAndRedirect), userInfo: nil, repeats: true)
    }
   
    @objc private func checkForTimerAndRedirect() {
        if timeCount == Constants.animationSeconds {
            timer?.invalidate()
            timer = nil
   
            presenter.presentHome()
        } else {
            timeCount += Constants.unitSecond
        }
    }
}

extension SplashView: SplashViewProtocol {}
