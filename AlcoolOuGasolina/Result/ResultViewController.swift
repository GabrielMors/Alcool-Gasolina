//
//  ResultViewController.swift
//  AlcoolOuGasolina
//
//  Created by Gabriel Mors  on 21/08/23.
//

import UIKit

class ResultViewController: UIViewController {

    var screen: ResultScreen?
    
    override func loadView() {
        screen = ResultScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.setDelegate(delegate: self)
    }

    func popViewController() {
        navigationController?.popViewController(animated: true)
    }
    
}

extension ResultViewController: ResultScreenProtocol {
    func tappedBackButton() {
        popViewController()
    }
    
    func tappedCalculateButton() {
        popViewController()
    }
}
