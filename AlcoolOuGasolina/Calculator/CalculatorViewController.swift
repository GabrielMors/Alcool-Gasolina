//
//  CalculatorViewController.swift
//  AlcoolOuGasolina
//
//  Created by Gabriel Mors  on 21/08/23.
//

import UIKit

class CalculatorViewController: UIViewController {

    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.setDelegate(delegate: self)
    }

}

extension CalculatorViewController: CalculatorScreenProtocol {

    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func tappedCalculateButton() {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
        let gasPrice: Double = (formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
        
        
        if ethanolPrice / gasPrice > 0.7 {
            print("Melhor usar Gasolina!")
        } else {
            print("Melhor usar Álcool!")
        }
    }
}
