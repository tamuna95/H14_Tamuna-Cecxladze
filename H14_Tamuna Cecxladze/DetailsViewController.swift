//
//  DetailsViewController.swift
//  H14_Tamuna Cecxladze
//
//  Created by APPLE on 09.07.22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var signOutLabel: UIButton!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    
    var emailField : String?
    var usernameField :String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = emailField
        userNameLabel.text = usernameField
        emailLabel.layer.cornerRadius = 10
        userNameLabel.layer.cornerRadius = 10
        signOutLabel.layer.cornerRadius = 10

    }
    

    @IBAction func signOutAction(_ sender: Any) {
    }
    
}
