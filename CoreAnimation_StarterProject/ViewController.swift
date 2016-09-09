//
//  ViewController.swift
//  CoreAnimation_StarterProject
//
//  Created by abdul karim on 06/01/16.
//  Copyright © 2016 Webwing Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var cloud1: UIImageView!
    @IBOutlet weak var cloud2: UIImageView!
    @IBOutlet weak var cloud3: UIImageView!
    @IBOutlet weak var cloud4: UIImageView!
    
    @IBOutlet weak var bird1: UIImageView!
    @IBOutlet weak var bird2: UIImageView!
    @IBOutlet weak var bird3: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let blueColor : UIColor = UIColor( red: 68.0/255, green: 126.0/255, blue:194.0/255, alpha: 1.0 )
        
        //Implementing Layers,Border Color & Width
        emailTextField.layer.borderColor = blueColor.CGColor
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.cornerRadius = 15
        
        passwordTextField.layer.borderColor = blueColor.CGColor
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.cornerRadius = 15
        loginButton.layer.cornerRadius = 15
        
        //Setting Delegates
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Resign First Responder
    func textFieldShouldReturn(userText: UITextField) -> Bool {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true;
    }


}

