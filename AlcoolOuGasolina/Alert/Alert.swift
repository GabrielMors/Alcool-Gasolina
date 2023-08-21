//
//  Alert.swift
//  AlcoolOuGasolina
//
//  Created by Gabriel Mors  on 21/08/23.
//

import Foundation
import UIKit

class Alert {
    
    var controller:UIViewController
    
    init(controller:UIViewController) {
        self.controller = controller
    }
    
    func getAlert(titulo:String,mensagem:String,completion:(() -> Void)? = nil){
        let alertController = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default) 
        alertController.addAction(okButton)
        self.controller.present(alertController, animated: true, completion: nil)
    }
}
