//
//  ViewController.swift
//  Prework IOS
//
//  Created by Huy Nguyễn on 1/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            // Let's us chose the title we have selected from the segmented control
            let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
            // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
            // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
            let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
                
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            let action = UIAlertAction(title: "Nice to meet you", style: .default, handler: nil)
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        
        
        }
    


}

