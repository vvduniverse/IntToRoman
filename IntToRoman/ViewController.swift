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
        convertButton.layer.cornerRadius = 7
    }
    
    @IBAction func convertButtonPressed() {
        if let text = enterNumberTF.text, let number = Int(text), number > 0 && number < 4000 {
            resultLabel.text = enterNumberTF.text
        } else {
            showAlert(with: "Wrong format of the number!", and: "Please enter number from 1 to 3999!")
            
        }
    }
}

extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
