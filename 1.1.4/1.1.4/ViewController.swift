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
        
        class Account{
            var name:String
            var age:Int
            var sex:String
            var favoriteLanguage:String
            
            
            init() {
                self.name = "名無し"
                self.age = 0
                self.sex = "不明"
                self.favoriteLanguage = "無し"
            }
            
            func intoroduction()  {
                print(name+favoriteLanguage+String(age)+"です。")
        
            }
            
}
        let hanako = Account()
        hanako.name = "山田花子さんは"
        hanako.age = 20
        hanako.sex = "女性"
        hanako.favoriteLanguage = "javaが好きな"
        hanako.intoroduction()
        
        let taro = Account()
        taro.name = "佐藤太郎くんは"
        taro.age = 20
        taro.sex = "男の子"
        taro.favoriteLanguage = "Swiftが好きな"
        taro.intoroduction()
        
        
        
        
        
        
}
}

