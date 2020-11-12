//
//  ViewController.swift
//  InstaCloneFirebase
//
//  Created by Naman Manchanda on 11/11/20.
//

import UIKit
import Firebase

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
        if emailText.text != "" && passwordText.text != ""{
            
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (authdata, error) in
                if error != nil{
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        }else{
            makeAlert(titleInput: "Error", messageInput: "Username/Password missing")

        }

        
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
}



 

 
