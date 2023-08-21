//
//  ResultViewController.swift
//  AlcoolOuGasolina
//
//  Created by Gabriel Mors  on 21/08/23.
//

import UIKit

enum BestFuel: String {
    case gas = "Gasolina"
    case ethanol = "Álcool"
}

class ResultViewController: UIViewController {

    var screen: ResultScreen?
    let bestFuel: BestFuel
    
    init(bestFuel: BestFuel) {
        self.bestFuel = bestFuel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        screen = ResultScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.setDelegate(delegate: self)
        screen?.resultLabel.text = bestFuel.rawValue
    }
    
}

extension ResultViewController: ResultScreenProtocol {
    func tappedBackButton() {
        UIView.transition(with: self.view.window!, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.navigationController?.popViewController(animated: false)
        }, completion: nil)
    }
    
    func tappedCalculateButton() {
        UIView.transition(with: self.view.window!, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.navigationController?.popViewController(animated: false)
        }, completion: nil)
    }
}
