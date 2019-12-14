//
//  ViewController.swift
//  2.1.17
//
//  Created by Shota on 2019/12/04.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func backButtonAct(_ sender: Any) {
             self.dismiss(animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}

