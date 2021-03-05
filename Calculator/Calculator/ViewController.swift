//
//  ViewController.swift
//  Calculator
//
//  Created by Alejandro Pérez Gómez on 19/02/21.
//

import UIKit

class ViewController: UIViewController {

    var numberScreen: Int = 0;
    var previousNumber: Int = 0;
    var operation: String = "";
    var result: Int = 0;
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func eraseNumber(_ sender: Any) {
        displayLabel.text = "0"
        numberScreen = 0
        previousNumber = 0
        operation = ""
        result = 0
    }
    
    
    @IBAction func processNumber(_ sender: UIButton) {
            if let numberText = sender.titleLabel?.text {
                if (displayLabel.text == "0") {
                    displayLabel.text = numberText
                    numberScreen = Int(displayLabel.text!)!
                    print("Number screen ", numberScreen)
                    
                }
                else if (displayLabel.text == "+") {
                    displayLabel.text = numberText
                    numberScreen = Int(displayLabel.text!)!
                    print("Number screen ", numberScreen)
                    
                }
                else if (displayLabel.text == "-") {
                    displayLabel.text = numberText
                    numberScreen = Int(displayLabel.text!)!
                    print("Number screen ", numberScreen)
                    
                }
                else if (displayLabel.text == "X") {
                    displayLabel.text = numberText
                    numberScreen = Int(displayLabel.text!)!
                    print("Number screen ", numberScreen)
                    
                }
                else if (displayLabel.text == "/") {
                    displayLabel.text = numberText
                    numberScreen = Int(displayLabel.text!)!
                    print("Number screen ", numberScreen)
                    
                } else {
                    displayLabel.text = displayLabel.text! + numberText
                    numberScreen = Int(displayLabel.text!)!
                    print("Number screen ", numberScreen)
                    
                }
            }
        }
    
    
    @IBAction func processOperator(_ sender: UIButton) {
        previousNumber = numberScreen
        print("previous number ",previousNumber)
        
        if let numberText = sender.titleLabel?.text{
            if(numberText == "+"){
                displayLabel.text = numberText
                operation = numberText
                print("Operator ", operation)
            }
            if(numberText == "-"){
                displayLabel.text = numberText
                operation = numberText
                print("Operator ", operation)
            }
            if(numberText == "/"){
                displayLabel.text = numberText
                operation = numberText
                print("Operator ", operation)
            }
            if(numberText == "X"){
                displayLabel.text = numberText
                operation = numberText
                print("Operator ", operation)
            }
            
        }
        
        
    }
    
    @IBAction func equals(_ sender: UIButton) {
        
        if let numberText = sender.titleLabel?.text{
            if(numberText == "=" && previousNumber != nil && numberText != nil){
                
                if(operation == "+"){
                    numberScreen = (previousNumber + numberScreen)
                    displayLabel.text = String(numberScreen)
                    print("Number screen ", numberScreen)
                }
                
                if(operation == "-"){
                    numberScreen = (previousNumber - numberScreen)
                    displayLabel.text = String(numberScreen)
                    print("Number screen ", numberScreen)
                }
                
                if(operation == "/"){
                    numberScreen = (previousNumber / numberScreen)
                    displayLabel.text = String(numberScreen)
                    print("Number screen ", numberScreen)
                }
                
                if(operation == "X"){
                    numberScreen = (previousNumber * numberScreen)
                    displayLabel.text = String(numberScreen)
                    print("Number screen ", numberScreen)
                }
                
            }
            
        }
        
        
    }
    
}

