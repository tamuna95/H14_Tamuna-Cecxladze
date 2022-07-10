//
//  BottomSheetViewController.swift
//  H14_Tamuna Cecxladze
//
//  Created by APPLE on 09.07.22.
//

import UIKit

class BottomSheetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func yesButtonDidTap(_ sender: Any) {
        let rootViewController = self.view.window?.rootViewController as? UINavigationController

        rootViewController?.setViewControllers([rootViewController!.viewControllers.first!],
        animated: false)

        rootViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func noButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
}
