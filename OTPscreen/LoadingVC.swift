//
//  LoadingVC.swift
//  FinalProjectBM
//
//  Created by Abdelrahman Amer on 02/08/2024.
//
import UIKit

class LoadingVC: UIViewController {

    private var loadingScreen: LoadingScreenView?

    @IBOutlet var backGroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Show loading screen
        showLoadingScreen()
        backGroundView.addGradientWithColor()

        
    }

    func showLoadingScreen() {
        loadingScreen = LoadingScreenView(frame: view.bounds)
        if let loadingScreen = loadingScreen {
            view.addSubview(loadingScreen)
        }
    }

    func hideLoadingScreen() {
        loadingScreen?.removeFromSuperview()
        loadingScreen = nil
    }
}
