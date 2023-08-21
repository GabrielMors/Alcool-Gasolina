//
//  CalculatorViewController.swift
//  AlcoolOuGasolina
//
//  Created by Gabriel Mors  on 21/08/23.
//

import UIKit

class CalculatorViewController: BaseViewController {
    
    var screen: CalculatorScreen?
    var alert: Alert?
    private var transitionAnimator: UIViewPropertyAnimator?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.setDelegate(delegate: self)
        alert = Alert(controller: self)
    }
    
    private func validateTextField() -> Bool {
        
        guard let ethanolPrice = screen?.ethanolPriceTextField.text else { return false }
        guard let gasPrice = screen?.gasPriceTextField.text else { return false }
        
        if ethanolPrice.isEmpty && gasPrice.isEmpty {
            alert?.getAlert(titulo: "Atenção!", mensagem: "Informe os valores do álcool e gasolina")
            return false
        } else if ethanolPrice.isEmpty {
            alert?.getAlert(titulo: "Atenção!", mensagem: "Informe o valor do álcool")
            return false
        } else if gasPrice.isEmpty {
            alert?.getAlert(titulo: "Atenção!", mensagem: "Informe o valor da gasolina")
            return false
        }
        
        return true
    }
    
}

extension CalculatorViewController: CalculatorScreenProtocol {
    
    func tappedBackButton() {
        UIView.transition(with: self.view.window!, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.navigationController?.popViewController(animated: false)
        }, completion: nil)
    }
    
    func tappedCalculateButton() {
        if validateTextField() {
            // Criar a próxima tela (ResultViewController)
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            
            let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            let gasPrice: Double = (formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            
            var viewController: ResultViewController?
            if ethanolPrice / gasPrice > 0.7 {
                viewController = ResultViewController(bestFuel: .gas)
            } else {
                viewController = ResultViewController(bestFuel: .ethanol)
            }
            
            // Configurar a animação de transição de tela
            UIView.transition(with: self.view.window!, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.navigationController?.pushViewController(viewController ?? UIViewController(), animated: false)
            }, completion: nil)
        }
    }
    
    
    
}
