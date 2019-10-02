//
//  Account.swift
//  1.1.4
//
//  Created by Shota on 2019/10/02.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import Foundation

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
    
    init(name:String,age:Int,sex:String,FavoriteLanguage:String) {
        self.name = name
        self.age = age
        self.sex = sex
        self.favoriteLanguage = FavoriteLanguage
        
    }
    
    func intoroduction()  {
        
        var sex2:String = ""
        
        if sex == "男性" {
            sex2 = "くん"
        }
        else if sex == "女性" {
            sex2 = "さん"
        }
        
        print(name+sex2+"は"+favoriteLanguage+"が得意な"+String(age)+"歳です。")
        
    }
}

