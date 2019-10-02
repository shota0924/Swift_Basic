//
//  ViewController.swift
//  2.1.3
//
//  Created by Shota on 2019/10/02.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func imageChangeButton(_ sender: Any) {
        
        imageView.image = [0,1,2,3,4].randomElement()!
        
    }
        
        var dispImageNo = 0
    
    func displayImage() {
        
        let imageNames = ["image","image1","image2","image3","image4"]
        
        let name = imageNames[dispImageNo]
    
        let image = UIImage(named: name)
    
        imageView.image = image
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "image")
                imageView.image = image
    }


}


