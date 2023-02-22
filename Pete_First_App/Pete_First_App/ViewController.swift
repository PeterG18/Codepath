//
//  ViewController.swift
//  Pete_First_App
//
//  Created by Peter Gansy on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Fname: UITextField!
    @IBOutlet weak var Lname: UITextField!
    @IBOutlet weak var SchoolName: UITextField!
    
    @IBOutlet weak var yearSegment: UISegmentedControl!
    @IBOutlet weak var PetSwitch: UISwitch!
    @IBOutlet weak var PetLabel: UILabel!
    @IBOutlet weak var PetStepper: UIStepper!
    
    
  
    @IBAction func PetChangedStepper(_ sender: UIStepper) {
        PetLabel.text = "\(Int(sender.value))"
    }
    
    
    
    @IBAction func SwitchAction(_ sender: UISwitch) {
    }
    
    
    @IBAction func IntroButton(_ sender: UIButton) {
        // Let's us chose the title we have selected from the segmented control
                let year = yearSegment.titleForSegment(at: yearSegment.selectedSegmentIndex)
                
                // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
                // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
                let introduction = "Hello! I'm \(Fname.text!) \(Lname.text!) I attend \(SchoolName.text!). I am currently in my \(year!) year and I own \(PetLabel.text!) dogs. It is \(PetSwitch.isOn) that I want more pets."
                
                
                // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
    }
    
    
    
}

