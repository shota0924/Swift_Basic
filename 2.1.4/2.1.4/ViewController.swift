//
//  ViewController.swift
//  2.1.4
//
//  Created by Shota on 2019/10/02.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func AlertViewButton(_ sender: Any) {
        
        
        let alert: UIAlertController = UIAlertController(title: "", message: "", preferredStyle:  UIAlertController.Style.alert)

            //OK
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
              
                (action: UIAlertAction!) -> Void in
                print("OK")
            })
            //キャンセル
        let cancelAction: UIAlertAction = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.cancel, handler:{
                
                (action: UIAlertAction!) -> Void in
                print("Cancel")
            })

         
            alert.addAction(cancelAction)
            alert.addAction(defaultAction)

        present(alert, animated: true, completion: nil)
        }
    
}
    





