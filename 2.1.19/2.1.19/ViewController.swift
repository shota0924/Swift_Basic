//
//  ViewController.swift
//  2.1.19
//
//  Created by Shota on 2019/12/04.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
            if segue.identifier == "toView2" {
     
                let nextView = segue.destination as! View2ViewController
     
                nextView.argString = textField.text!
            }
        }
}
    
   class View2ViewController: UIViewController {
    
       var argString = ""

    @IBOutlet weak var label: UILabel!
    
     override func viewDidLoad() {
            super.viewDidLoad()
     
            label.text = argString
        
    }
    
    @IBAction func buckButton(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
    }
}


