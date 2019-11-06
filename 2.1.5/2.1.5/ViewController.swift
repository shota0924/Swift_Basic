//
//  ViewController.swift
//  2.1.5
//
//  Created by Shota on 2019/10/16.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func tappedActionSheet(_ sender: Any) {
        
        let alertSheet = UIAlertController(title: "マイページに移動", message: "選択してください", preferredStyle: UIAlertController.Style.actionSheet)

        let action1 = UIAlertAction(title: "twitter", style: UIAlertAction.Style.default, handler: {
                  (action: UIAlertAction!) in
            print("twitter")
              })
        let action2 = UIAlertAction(title: "facebook", style: UIAlertAction.Style.default, handler: {
            (action: UIAlertAction!) in
            print("facebook")
        })
        let action3 = UIAlertAction(title: "LINE", style: UIAlertAction.Style.default, handler: {
               (action: UIAlertAction!) in
            print("LINE")
           })
        
        alertSheet.addAction(action1)
        alertSheet.addAction(action2)
        alertSheet.addAction(action3)
        
        self.present(alertSheet, animated: true, completion: nil)

    }
}

