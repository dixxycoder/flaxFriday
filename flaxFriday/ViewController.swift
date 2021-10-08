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
    
    @IBOutlet weak var notButton: UIButton!
    
    // Use to change the texts on the UIButton
    var buttonName1 = ""
    var buttonName2 = ""
    var buttonName3 = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
//MARK: PINK background (yellow)
    @IBAction func colorChange(_ sender: UIButton)
    {
        self.view.backgroundColor = UIColor.systemYellow
        
        buttonName1 = "NO PICK ME!!"
        imageButton.setTitle(buttonName1, for: .normal)
        
        buttonName2 = "Pick me"
        colorButton.setTitle(buttonName2, for: .normal)
        
        buttonName3 = "You don't see me!!"
        notButton.setTitle(buttonName3, for: .normal)
        
        colorButton.backgroundColor = UIColor.systemPink
    }
    
//MARK: PURPLE background (purple)
    @IBAction func imageChange(_ sender: UIButton)
    {
        self.view.backgroundColor = UIColor.purple
        
        buttonName1 = "NO PICK ME!!"
        colorButton.setTitle(buttonName1, for: .normal)
    
        buttonName2 = "Pick me"
        imageButton.setTitle(buttonName2, for: .normal)
        
        buttonName3 = "You don't see me!!"
        notButton.setTitle(buttonName3, for: .normal)
        
        imageButton.backgroundColor = UIColor.systemPurple
    }
    
//MARK: below the Pick me Buttons
    @IBAction func badNoGood(_ sender: Any)
    {
        self.view.backgroundColor = UIColor.black
        
        buttonName1 = ""
        colorButton.setTitle(buttonName1, for: .normal)
        colorButton.backgroundColor = UIColor.black
        
        buttonName2 = ""
        imageButton.setTitle(buttonName2, for: .normal)
        imageButton.backgroundColor = UIColor.black
        
        buttonName3 = "You should've listen >:("
        notButton.setTitle(buttonName3, for: .normal)
    }
    

    
    
    
    
}

