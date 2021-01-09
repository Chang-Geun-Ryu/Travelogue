//
//  ViewController.swift
//  TravelogueStudy
//
//  Created by mcnc on 2021/01/08.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SignIn" {
            
        } else if segue.identifier == "FindPW" {
            
        }
    }
    
    @IBAction func cancelSignIn(unwindSegue: UIStoryboardSegue) {
      
    }
    
    @IBAction func cancelSignUp(unwindSegue: UIStoryboardSegue) {
      
    }

}

