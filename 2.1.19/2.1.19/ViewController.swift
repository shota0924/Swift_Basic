//
//  ViewController.swift
//  2.1.19
//
//  Created by Shota on 2019/12/04.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit
 
class FirstViewController: UIViewController {
 
    
    @IBOutlet weak var textField1: UITextField!
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    // goView12ボタン押下時の処理
    @IBAction func goNextViewButton(_ sender: Any) {
   
        // storyboardのインスタンス取得
        let storyboard: UIStoryboard = self.storyboard!
 
        // 遷移先ViewControllerのインスタンス取得
        let nextView = storyboard.instantiateViewController(withIdentifier: "Next") as! NextPageController
 
        // ①値の設定
        nextView.argString = textField1.text!
 
        // 画面遷移
        self.present(nextView, animated: true, completion: nil)
    }
}
 


