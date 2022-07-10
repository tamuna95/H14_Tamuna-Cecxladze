//
//  RegistrationViewController.swift
//  H14_Tamuna Cecxladze
//
//  Created by APPLE on 09.07.22.
//

import UIKit

protocol PassDataBack{
    func passData(username: String, password: String,email: String)
    
}

class RegistrationViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var singUpButtonLabel: UIButton!
    
    var delegate : PassDataBack?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singUpButtonLabel.layer.cornerRadius = 10

    }
    

    @IBAction func signUpButtonAction(_ sender:UIButton) {

        if usernameTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true || emailTextField.text?.isEmpty == true ||  confirmPasswordField.text?.isEmpty == true{
            let alert = UIAlertController(title: "ყველა ველი სავალდებულოა",message: "შეავსეთ ყველა ველი",preferredStyle: .alert)
            let action = UIAlertAction(title:"დახურვა",style: .default,handler: nil)
            alert.addAction(action)
            present(alert,animated: true,completion: nil)
        }
        delegate?.passData(username: usernameTextField.text!, password: passwordTextField.text!,email: emailTextField.text!)
        passwordValidation()

        dismiss(animated: true,completion: nil)
        self.navigationController?.popViewController(animated: true)

        }
    
    func passwordValidation(){
        let arrayOfNumbers = ["0","1","2","3","4","5","6","7","8","9"]
        let arrayOfUppercasedLetter = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        if let number = arrayOfNumbers.randomElement(),let letter = arrayOfUppercasedLetter.randomElement() {
            if passwordTextField.text?.contains(number) == false && passwordTextField.text?.contains(letter) == false && passwordTextField.text!.count < 8 {
                let alert = UIAlertController(title: "არ არის დაცული პაროლი",message: "სცადეთ თავიდან",preferredStyle: .alert)
                let action = UIAlertAction(title:"Ok",style: .default,handler: nil)
                alert.addAction(action)

                present(alert,animated: true,completion: nil)
                
        }
            
 }

        if confirmPasswordField.text != passwordTextField.text! {
            let alert = UIAlertController(title: "პაროლები არ ემთხვევა",message: "სცადეთ თავიდან",preferredStyle: .alert)
            let action = UIAlertAction(title:"Ok",style: .default,handler: nil)
            alert.addAction(action)
            present(alert,animated: true,completion: nil)
        }
        
    }

}


