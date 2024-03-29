//
//  ViewController.swift
//  2.1.3
//
//  Created by Shota on 2019/10/16.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomImageView: UIImageView!
    
    var img = UIImage(named: "Image")
    var img1 = UIImage(named:"Image-1")
    var img2 = UIImage(named: "Image-2")
    var img3 = UIImage(named: "Image-3")
    var img4 = UIImage(named: "Image-4")
    
    
    @IBAction func RandomButton(_ sender: Any) {
        let random = arc4random_uniform(5)
        print(random)
        
        if(random == 0) {
            randomImageView.image = img
        } else if (random == 1) {
            randomImageView.image = img1
        } else if (random == 2) {
            randomImageView.image = img2
        } else if (random == 3) {
            randomImageView.image = img3
        } else if (random == 4) {
            randomImageView.image = img4
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }




}
