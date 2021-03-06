//
//  ViewController.swift
//  HesapMakinesi_Turkcell_Odev1
//
//  Created by Gulsah Altiparmak on 6.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFieldNumber1: UITextField!
    @IBOutlet weak var txtFieldNumber2: UITextField!
    
    @IBOutlet weak var lblNotification: UILabel!
  
    
    var firstNumber : Double = 0.0
    var secondNumber : Double = 0.0
    var result : Double = 0.0
    
    @IBAction func fcnSummationButton(_ sender: UIButton) {
     
        guard fcnIsValid() else {
            fcnInvalidNotification() 
            return
        }
        
        result = fcnSum(number1: firstNumber, number2: secondNumber)
        lblNotification.text = "Sum: \(result)"
      
    }
    
 
    @IBAction func fcnSubractionButton(_ sender: UIButton) {
        guard fcnIsValid() else {
            fcnInvalidNotification()
            return
        }
        
        result = fcnSub(number1: firstNumber, number2: secondNumber)
        lblNotification.text = "Sub: \(result)"
    }
    
    @IBAction func fcnMultiplicationButton(_ sender: UIButton) {
        guard fcnIsValid() else {
            fcnInvalidNotification()
            return
        }
        
        result = fcnMul(number1: firstNumber, number2: secondNumber)
        lblNotification.text = "Multiplication: \(result)"
    }
    
    
    @IBAction func fcnDivisionButton(_ sender: UIButton) {
        guard fcnIsValid() else {
            fcnInvalidNotification()
            return
        }
        
        guard secondNumber != 0.0 else {
            lblNotification.text = "Divided by 0 exception"
            return
        }
        result = fcnDiv(number1: firstNumber, number2: secondNumber)
        lblNotification.text = "Division: \(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func fcnSum(number1:Double, number2:Double) -> Double {
        
       
        return number1 + number2
    }
    
    func fcnSub(number1:Double,number2:Double) -> Double {
        
        return number1 - number2
        
    }
    func fcnMul(number1:Double,number2:Double) -> Double {
        return number1 * number2
       
    }
    func fcnDiv(number1:Double,number2:Double) -> Double {
        
        
        return number1 / number2
       
    }
    
    func fcnIsValid() -> Bool {
        let nb1 = txtFieldNumber1.text
        let nb2 = txtFieldNumber2.text
        
        
        guard let number1 = Double(nb1!) , let number2 = Double(nb2!) else {
           
            return false
        }
        firstNumber = number1
        secondNumber = number2
        
        return true
    }
    func fcnInvalidNotification() {
        lblNotification.text = "You have entered \n an incorrect value."
    }
    
  
    
    
   
    


}

