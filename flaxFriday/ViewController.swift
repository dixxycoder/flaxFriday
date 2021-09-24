//
//  ViewController.swift
//  flaxFriday
//
//  Created by Grant Spraker on 9/24/21.
//

import UIKit

// Button Corner Radius and Border code from StackOverflow.com

@IBDesignable extension UIButton{

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
    // Will be used to count the number on much the user change the back ground
    @IBOutlet weak var numberLable: UILabel!
    
    // For the background with a color
    @IBOutlet weak var colorButton: UIButton!
    
    // For the background with an image
    @IBOutlet weak var imageButton: UIButton!
    var buttonName1 = ""
    var buttonName2 = ""
    
    //MARK: "NO CHOSE ME!!"
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
//Right now it will change the background will change to a teal
    @IBAction func colorChange(_ sender: UIButton)
    {
        self.view.backgroundColor = UIColor.red
        
        buttonName1 = "NO PICK ME!!"
        imageButton.setTitle(buttonName1, for: .normal)
        
        buttonName2 = "Pick me"
        colorButton.setTitle(buttonName2, for: .normal)
    }
    
//Right now it will chage the backgground will change to a gray
    @IBAction func imageChange(_ sender: UIButton)
    {
        self.view.backgroundColor = UIColor.gray
        
        buttonName1 = "NO PICK ME!!"
        colorButton.setTitle(buttonName1, for: .normal)
        
        buttonName2 = "Pick me"
        imageButton.setTitle(buttonName2, for: .normal)
    }
    
}

