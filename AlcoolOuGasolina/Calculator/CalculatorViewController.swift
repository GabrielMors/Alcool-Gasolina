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
        print(#function)
    }
}
