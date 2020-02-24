//
//  RegisterVC.swift
//  Fotografos
//
//  Created by Abhilash S (BLR GSS) on 21/02/20.
//  Copyright © 2020 Abhilash S (BLR GSS). All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController  {
//outlets
    
    @IBOutlet weak var confpasscheckimage: UIImageView!
    @IBOutlet weak var passwordImageCheck: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmpasswordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.addTarget(self, action:#selector(textFieldDidchange(_:)) , for: UIControl.Event.editingChanged)
        confirmpasswordTextField.addTarget(self, action:#selector(textFieldDidchange(_:)) , for: UIControl.Event.editingChanged)
        // Do any additional setup after loading the view.
    }
    

    @objc func textFieldDidchange(_ textField:UITextField)
    {
        guard let passtxt = passwordTextField.text else {
            return
        }
        
        if textField == confirmpasswordTextField
        {
            passwordImageCheck.isHidden = false
            confpasscheckimage.isHidden = false
        }
        else{
            if passtxt.isEmpty
            {
                passwordImageCheck.isHidden = true
                confpasscheckimage.isHidden = true
                confirmpasswordTextField.text = ""
            }
            
        }
        
        if passwordTextField.text == confirmpasswordTextField.text
        {
            passwordImageCheck.image = UIImage(named: "green_check")
            confpasscheckimage.image = UIImage(named: "green_check")
        }
        else
        {
            passwordImageCheck.image = UIImage(named: "red_check")
            confpasscheckimage.image = UIImage(named: "red_check")
        }
    }
   
    @IBAction func registerButtonAction(_ sender: Any) {
        
        guard let email = emailTextField.text , email.isNotEmpty ,
        let username = usernameTextField.text , username.isNotEmpty ,
        let password = passwordTextField.text , password.isNotEmpty
            else{
                return
        }
        activityIndicator.startAnimating()
        
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            
            if let error = error
            {
                debugPrint(error)
                return
            }
            self.activityIndicator.stopAnimating()
            print("successfully registered new user")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
