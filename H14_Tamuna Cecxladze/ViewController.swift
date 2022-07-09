//
//  ViewController.swift
//  H14_Tamuna Cecxladze
//
//  Created by APPLE on 09.07.22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signnInButtonLabel: UIButton!
    @IBOutlet weak var signUpButtonLabel: UIButton!
    
    var usernameSave :String = ""
    var passwordSave : String = ""
    var mailSave : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
        signnInButtonLabel.layer.cornerRadius = 10
        signUpButtonLabel.layer.cornerRadius = 10

    }

    @IBAction func signInButtonAction(_ sender: Any) {
     
        if usernameTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false && usernameTextField.text == usernameSave && passwordTextField.text == passwordSave
        {
            performSegue(withIdentifier: "DetailsViewController", sender: self)
            
           
        }
        else if usernameTextField.text?.isEmpty == true && passwordTextField.text?.isEmpty == true{
            
            let alert = UIAlertController(title: "სავალდებულოა ყველა ველის შევსება",message: "სცადეთ თავიდან",preferredStyle: .alert)
            let action = UIAlertAction(title:"დახურვა",style: .default,handler: nil)
            alert.addAction(action)
            present(alert,animated: true,completion: nil)
        }
       
        else {
            let alert = UIAlertController(title: "მონაცემები არ ემთხვევა",message: "სცადეთ თავიდან",preferredStyle: .alert)
            let action = UIAlertAction(title:"დახურვა",style: .default,handler: nil)
            alert.addAction(action)
            present(alert,animated: true,completion: nil)
        }
    }
    
    @IBAction func signUpButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "RegistrationPage", sender: self)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RegistrationPage" {
            let registrationVC = segue.destination as! RegistrationViewController
            registrationVC.delegate = self

        }

        if segue.identifier == "DetailsViewController"{
            let detailsVC = segue.destination as! DetailsViewController
            detailsVC.emailField = mailSave
            detailsVC.usernameField = usernameSave
}
}
}
extension ViewController : PassDataBack {
    func passData(username: String, password: String,email: String) {
        usernameSave = username
        passwordSave = password
        mailSave = email
        usernameTextField.text = username
        passwordTextField.text = password
        print(mailSave)
        print(usernameSave)
    }
    
    
}
