//
//  ViewController.swift
//  1.1.4
//
//  Created by Shota on 2019/09/18.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let hanako = Account(name: "山田花子", age: 20, sex: "女性", FavoriteLanguage: "Java")
        
        hanako.intoroduction()
        
        let taro = Account(name: "佐藤太郎", age: 20, sex: "男性", FavoriteLanguage:"Swift")
        
        taro.intoroduction()
        
    }
}

