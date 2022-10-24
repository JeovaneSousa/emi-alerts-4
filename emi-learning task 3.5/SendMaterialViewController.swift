//
//  SendMaterialViewController.swift
//  emi-learning task 3.5
//
//  Created by jeovane.barbosa on 24/10/22.
//

import UIKit

class SendMaterialViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var areaTextField: UITextField!
    
    @IBOutlet weak var statusTextField: UITextField!
    
    
    
    @IBAction func receiveMaterialButtonPressed(_ sender: UIButton) {
        showConfirmationAlert()
        
    }
    
    func showConfirmationAlert(){
        
        let message = "Antes de enviarmos, por favor, revise seus dados:\n\nNome: \(nameTextField.text!)\nEmail: \(emailTextField.text!)\nÁrea de atuação: \(areaTextField.text!)\nStatus Profissional: \(statusTextField.text!)"
        
        let alert = UIAlertController(title: "Quase lá!", message: message, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler:{(action: UIAlertAction!) in self.showFinishedAlert()}))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil )
    }
    
    func showFinishedAlert(){
            let successAlert = UIAlertController(title: "Feito!", message: "Verifique seu email e tenha acesso ao documento.", preferredStyle: .alert)
            
            successAlert.addAction(UIAlertAction(title: "Ok!", style: .cancel, handler: nil))
            
            self.present(successAlert, animated: true, completion: nil)
    }
    
}
