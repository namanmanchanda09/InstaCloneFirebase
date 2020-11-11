//
//  ViewController.swift
//  InstaCloneFirebase
//
//  Created by Naman Manchanda on 11/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var emailText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signInClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    
    @IBAction func signUpClicked(_ sender: UIButton) {
    }
    
}

 

