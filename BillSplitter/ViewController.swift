//
//  ViewController.swift
//  BillSplitter
//
//  Created by Juan Meza on 12/16/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dinersTextfield: UITextField!
    @IBOutlet weak var totalCostTextfield: UITextField!
    //@IBOutlet weak var resultLabel: UILabel!
    var resultText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func calculate(_ sender: Any) {
        
        //let dinerValue = dinersTextfield.text
        //let totalValue = totalCostTextfield.text
        
        // We do this proccess, because the value "nil" and dont crash the app
        //if let dinerStr = dinerValue, let totalStr = totalValue {
        //if let dinerStr = dinersTextfield.text, let totalStr = totalCostTextfield.text {
           // print(dinerStr + totalStr)
            
            //let dinerDouble = Double(dinerStr)
            //let totalDouble = Double(totalStr)
            
            //if let diner = dinerDouble, let total = totalDouble {
            //if let diner = Double(dinerStr), let total = Double(totalStr){
              //  print(diner+total)
            //}
        //}
        
        /*if let dinerStr = dinersTextfield.text, let totalStr = totalCostTextfield.text,
            let diner = Double(dinerStr), let total = Double(totalStr){
            
            print(diner + total)
            
            let formattedTotal = String(format: "%.2f", total/diner)
            let formattedCost = String(format: "%.2f", total)
           
            //resultLabel.text = "The total cost food is: $ \(formattedCost)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $ \(formattedTotal)"
        }*/
        
        //Check if a field is empty with programming
        
        if let dinerStr = dinersTextfield.text, let totalStr = totalCostTextfield.text,
            let diner = Double(dinerStr), let total = Double(totalStr){
            
            print(diner + total)
            
            let formattedTotal = String(format: "%.2f", total/diner)
            let formattedCost = String(format: "%.2f", total)
            
            //resultLabel.text = "The total cost food is: $ \(formattedCost)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $ \(formattedTotal)"
            resultText = "The total cost food is: $ \(formattedCost)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $ \(formattedTotal)"
            
            if total > 100 {
                 performSegue(withIdentifier: "costly", sender: self)
            }else {
                 performSegue(withIdentifier: "cheap", sender: self)
            }
        }
        
        
       
    }
    @IBAction func dismissKeyboard(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    //Check if a field is empty without programming
    /*
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if let dinerStr = dinersTextfield.text, let totalStr = totalCostTextfield.text,
            let diner = Double(dinerStr), let total = Double(totalStr){
            
            print(diner + total)
            
            let formattedTotal = String(format: "%.2f", total/diner)
            let formattedCost = String(format: "%.2f", total)
            
            //resultLabel.text = "The total cost food is: $ \(formattedCost)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $ \(formattedTotal)"
            resultText = "The total cost food is: $ \(formattedCost)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $ \(formattedTotal)"
            
            return true
        }
        
        return false
    }*/
    
    // Send information
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
            //let destinationVC = segue.destination as! ResultViewController
            //destinationVC.finalText = resultText
        
        if let identifier = segue.identifier {
            
            if identifier == "cheap" {
                
                let navController = segue.destination as! UINavigationController
                // Without navigation controller
                //let destinationVC = segue.destination as! ResultViewController
                
                // With navigation controlles
                let destinationVC = navController.topViewController as! ResultViewController
                destinationVC.finalText = resultText
            
            } else {
                
                let destination = segue.destination as! CostlyViewController
                destination.finalTextCostly = resultText
                destination.titleCostly = "Your dinner was expensive"
            }
        }
        
    }
    
    @IBAction func helpClicked(_ sender: Any) {
        
        if let helpVC = storyboard?.instantiateViewController(withIdentifier: "nav") {
            
            present(helpVC, animated: true, completion: nil)
        }
    }
    
}
