//
//  LoginPage.swift
//  SignInApp
//
//  Created by dan on 12/07/2022.
//

import Foundation
import UIKit


class LoginPage: UIViewController {
    //UI Elements
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //Create bools to check Username and Password
    var usernameIsCorrect: Bool = false
    var passwordIsCorrect: Bool = false
    
    override func viewWillAppear(_ animated: Bool) {
        //Clear the textfield
        usernameTextField.text = ""
        passwordTextField.text = ""
        
        //Reset Bools
        usernameIsCorrect = false
        passwordIsCorrect = false
    }
    
    //UI Actions
    @IBAction func signInButtonPressed(_ sender: Any) {
        //Check if the username and password are correct
        if usernameTextField.text == "emma@tfl.gov.uk"{
            usernameIsCorrect = true
        }
        
        if passwordTextField.text == "password123"{
            passwordIsCorrect = true
        }
       
        //Check if both are correct
        if usernameIsCorrect && passwordIsCorrect {
            //Go to the profile page
            performSegue(withIdentifier: "goToWelcomePage", sender: nil)
        } else {
            //Present error Alert
            let alert = UIAlertController(title: "Login Error", message: "Looks like either your Username or Password is incorrect. Please try again.", preferredStyle: .alert)
            
            let doneButton = UIAlertAction(title: "Done", style: .cancel)
            alert.addAction(doneButton)
            
            present(alert, animated: true)
        }
        
    }
    
    @IBAction func doneButtonPressed(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func passwordDoneButtonPressed(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    
}
