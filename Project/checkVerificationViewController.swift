//
//  checkVerificationViewController.swift
//  Project
//
//  Created by Lab on 12/25/19.
//  Copyright © 2019 Lab. All rights reserved.
//

import UIKit

class checkVerificationViewController: UIViewController {
    @IBOutlet weak var codeField: UITextField!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    var countryCode: String?
    var phoneNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ValidateCode(_ sender: Any) {
        self.statusLabel.text = nil
        self.statusLabel.isHidden = true
        
        if let code = codeField.text {
            VerifyAPI.ValidateVerificationCode(self.countryCode!, self.phoneNumber!, code) {
                checked in
                
                if(checked.success) {
                    self.statusLabel.textColor = UIColor.green
                    self.statusLabel.text = "Verification Successful!"
                    self.statusLabel.isHidden = false
                    
                } else {
                    self.statusLabel.textColor = UIColor.red
                    self.statusLabel.text = checked.message
                }
                
            }
        }
    }
    
    

}
