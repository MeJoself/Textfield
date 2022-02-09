//
//  ViewController.swift
//  Textfield
//
//  Created by Jose Faustino on 2/9/22.
//

import UIKit
//Corner Radius Extension
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController
{
    //Declare outlet varibles for the label and text field.
    //Public or Global Variables. This means I can use these throughout the entire class.
    @IBOutlet weak var outletToText: UITextField!
    @IBOutlet weak var outletToLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//This fuction takes the text from the text field and displays it on the label when the bottom is pressed.
    @IBAction func buttonToLabel(_ sender: Any)
    {
        //The ?? is called an Optional. It stores the data to go to the right of the double question as a default if noting is entered.
        outletToLabel.text = outletToText.text ?? "Bobby"
        
        //Local Variable. Can only be used in this function.
        var JoseIam = outletToText.text
    }
    
}


    


