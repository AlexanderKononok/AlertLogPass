//
//  ViewController.swift
//  AlertLogPass
//
//  Created by Alexander Kononok on 10/20/20.
//

import UIKit

class ViewController: UIViewController {

  private var loginTextField: UITextField?
  private var passwordTextField: UITextField?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    let alert = UIAlertController(title: "Sign in", message: nil, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default)
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
    
    alert.popoverPresentationController?.sourceView = view
    alert.popoverPresentationController?.sourceRect = CGRect(x: view.frame.width / 2, y: view.frame.height / 2, width: 0, height: 0)
    alert.popoverPresentationController?.permittedArrowDirections = []

    alert.addTextField { (loginTextField) in
      loginTextField.placeholder = "login"
      self.loginTextField = loginTextField
    }
    
    alert.addTextField { (passwordTextField) in
      passwordTextField.placeholder = "password"
      passwordTextField.isSecureTextEntry = true
      self.passwordTextField = passwordTextField
    }
    
    alert.addAction(okAction)
    alert.addAction(cancelAction)
    
    present(alert, animated: true)
  }

}

