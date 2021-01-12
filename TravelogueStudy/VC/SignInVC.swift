//
//  SignInVC.swift
//  TravelogueStudy
//
//  Created by CHANGGUEN YU on 2021/01/09.
//

import UIKit

class SignInVC: UIViewController {
    @IBOutlet weak var textFieldUserID: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var incorrectUserIDLabel: UILabel!
    @IBOutlet weak var incorrectPWLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(update), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    @objc func update() {
//        if var userIDText = textFieldUserID.text, userIDText.isEmpty {
//            userIDText = "UserID"
//        }
//        if var passwordText = textFieldPassword.text, passwordText.isEmpty {
//            passwordText = "Password"
//        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func cancelFindPW(unwindSegue: UIStoryboardSegue) {
      
    }
    
    @IBAction func back(_ sender: UIButton) {
        performSegue(withIdentifier: "CancelSignIn", sender: nil)
    }
    
    @IBAction func confirmSignIn(_ sender: UIButton) {
        
    }
    
    private func confirmFail() {
        
    }
}
