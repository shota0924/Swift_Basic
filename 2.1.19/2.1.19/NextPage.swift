//
//  NextPage.swift
//  2.1.19
//
//  Created by Shota on 2019/12/14.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit


 
class NextPageController: UIViewController {
 
    // ①引数（文字列）
    var argString = ""
 
    @IBOutlet weak var label1: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // ②引数をラベルにセット
        label1.text = argString
    }
 
    @IBAction func backButton1(_ sender: Any) { self.dismiss(animated: true, completion: nil)
    }
       
    
}
 
