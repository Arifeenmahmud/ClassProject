//
//  SelectionScreen.swift
//  DataCommunication
//
//  Created by Arifeen Mahmud on 2/4/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import UIKit
protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}
class SelectionScreen: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!

override func viewDidLoad() {
    super.viewDidLoad()
    
    }
    @IBAction func showBtnTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "vader")!, name: "Darth Vader", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
}
