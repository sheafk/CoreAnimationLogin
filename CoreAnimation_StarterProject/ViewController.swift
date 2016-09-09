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

        setupViews()
        
        //Setting Delegates
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func setupViews() {
        let blueColor : UIColor = UIColor( red: 68.0/255, green: 126.0/255, blue:194.0/255, alpha: 1.0 )
        
        //Implementing Layers,Border Color & Width
        emailTextField.layer.borderColor = blueColor.CGColor
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.cornerRadius = 15
        
        passwordTextField.layer.borderColor = blueColor.CGColor
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.cornerRadius = 15
        loginButton.layer.cornerRadius = 15
    }
    
    override func viewWillAppear(animated: Bool) {
        loginLabel.center.y -= view.bounds.width
        emailTextField.center.x -= view.bounds.width
        passwordTextField.center.x += view.bounds.width
        loginButton.alpha = 0.0
        cloud1.alpha = 0.0
        cloud2.alpha = 0.0
        cloud3.alpha = 0.0
        cloud4.alpha = 0.0
        
        
    }

    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(2.0, animations: {
            self.loginLabel.center.y += self.view.bounds.width
        })
        
        UIView.animateWithDuration(1.5, delay: 0.5,
                                   usingSpringWithDamping: 0.3,
                                   initialSpringVelocity: 0.5,
                                   options: [], animations: {
                                    self.emailTextField.center.x += self.view.bounds.width
                                    self.passwordTextField.center.x -= self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 2.0,
                                   options: [],
                                   animations: {
                                    self.loginButton.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.6, options: [], animations: {
            self.cloud1.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.8, options: [], animations: {
            self.cloud2.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 1.0, options: [], animations: {
            self.cloud3.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 1.2, options: [], animations: {
            self.cloud4.alpha = 1.0
            }, completion: nil)
        
        animateTheClouds(cloud1)
        animateTheClouds(cloud2)
        animateTheClouds(cloud3)
        animateTheClouds(cloud4)

    }
    
    func animateTheClouds(cloud : UIImageView) {
        let cloudMovingSpeed = 60.0/view.frame.size.width
        let duration = (view.frame.size.width - cloud.frame.origin.x) * cloudMovingSpeed
        UIView.animateWithDuration(NSTimeInterval(duration), delay: 0.0, options: .CurveLinear, animations: {
            cloud.frame.origin.x = self.view.frame.size.width
            }, completion: {_ in
                cloud.frame.origin.x = -cloud.frame.size.width
                self.animateTheClouds(cloud)
        })
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

