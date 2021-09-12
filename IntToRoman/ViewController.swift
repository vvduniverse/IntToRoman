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
    
    private let dictionary = [1:"I", 2:"II", 3:"III", 4:"IV", 5:"V", 6:"VI", 7:"VII", 8:"VIII",
                               9:"IX", 10:"X", 11:"XI", 20:"XX", 30:"XXX", 40:"XL", 50:"L",
                                60:"LX", 70:"LXX", 80:"LXXX", 90:"XC", 100:"C", 200:"CC", 300:"CCC",
                                 400:"CD", 500:"D", 600:"DC", 700:"DCC", 800:"DCCC", 900:"CM",
                                  1000:"M", 2000:"MM", 3000:"MMM", 3999:"MMMCMXCIX"]
    
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
