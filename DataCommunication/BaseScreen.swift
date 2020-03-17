//
//  ViewController.swift
//  DataCommunication
//
//  Created by Arifeen Mahmud on 2/4/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {
    @IBOutlet weak var baseLbl: UILabel!
    @IBOutlet weak var baseTxt: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func handleBackToVC1() {

        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func choosBtn(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        selectionVC.selectionDelegate = self as? SideSelectionDelegate
               present(selectionVC, animated: true, completion: nil)
    }
    

}

