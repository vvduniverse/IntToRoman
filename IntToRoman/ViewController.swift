//
//  ViewController.swift
//  IntToRoman
//
//  Created by Vahtee Boo on 11.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumberTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        convertButton.layer.borderWidth = 150
        convertButton.layer.cornerRadius = 7
    }

    @IBAction func convertButtonPressed() {
        if let text = enterNumberTF.text {
            if let number = Int(text) {
                if number > 0 || number < 4000 {
                    
                    resultLabel.text = enterNumberTF.text
                } else {
                    print("ERROR")
                }
                
            }

        }
//        guard Int(enterNumberTF.text) > 0 || Int(enterNumberTF.text) < 4000 else {
//            <#statements#>
//        }
        
    }
    
}

