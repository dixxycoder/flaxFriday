//
//  ViewController2.swift
//  flaxFriday
//
//  Created by Grant Spraker on 10/22/21.
//

import UIKit

class ViewController2: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        assignbackground()
        
       
    }
    
    func assignbackground()
    {
            let background = UIImage(named: "killer bunny")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
        }
    


}
