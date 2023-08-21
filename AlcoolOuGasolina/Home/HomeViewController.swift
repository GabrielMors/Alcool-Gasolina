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
        
        // Configurar a animação de transição de tela
        UIView.transition(with: self.view.window!, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.navigationController?.pushViewController(viewController, animated: false)
        }, completion: nil)
    }
}
