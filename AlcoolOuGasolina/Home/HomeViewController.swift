//
//  ViewController.swift
//  AlcoolOuGasolina
//
//  Created by Gabriel Mors  on 21/08/23.
//

import UIKit

class HomeViewController: UIViewController {

    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.setDelegate(delegate: self)
    }


}

extension HomeViewController: HomeScreenProtocol {
    func tappedStartButton() {
        let viewController = CalculatorViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
