//
//  MyTfLPage.swift
//  SignInApp
//
//  Created by dan on 12/07/2022.
//

import Foundation
import UIKit


class MyTfLPage: UIViewController {
    //Tap sign out button
    @IBAction func signOutButtonPressed(_ sender: Any) {
        //Present Sign Out Alert
        let alert = UIAlertController(title: "Sign Out?", message: "Are you sure you want to sign out?", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        let signOutButton = UIAlertAction(title: "Sign Out", style: .default, handler: { action in
            self.dismiss(animated: true)
            
        })
        alert.addAction(cancel)
        alert.addAction(signOutButton)
        
        present(alert, animated: true)
    }
    
}
