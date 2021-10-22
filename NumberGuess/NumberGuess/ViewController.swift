//
//  ViewController.swift
//  NumberGuess
//
//  Created by Tobias Graski on 08.10.21.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func buttonClick(_ sender: Any) {
        let guessedNumber = Int(textField.text!)!
        let text: String?
        
        switch model.compare(guess: guessedNumber) {
        case -1:
            text = "Higher"
        case 1:
            text = "Lower"
        default:
            text = "Correct"
        }
        numberLabel.text = text
        model.countOfTries += 1
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int.random(in: 0..<100)
        print("Number to guess: \(model.numberToGuess)")
        // Do any additional setup after loading the view.
    }
}

