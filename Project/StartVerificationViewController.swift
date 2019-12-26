//
//  ViewController.swift
//  Project
//
//  Created by Lab on 12/23/19.
//  Copyright © 2019 Lab. All rights reserved.
//

import UIKit

class StartVerificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var countryCodeField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBAction func sendVerification(_ sender: Any) {
        
        
        // send verification SMS
        if let phoneNumber = phoneNumberField.text, let countryCode = countryCodeField.text {
            VerifyAPI.sendVerificationCode(countryCode, phoneNumber)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? checkVerificationViewController{
            dest.countryCode = countryCodeField.text
            dest.phoneNumber = phoneNumberField.text
            
        }
    }
    
}

