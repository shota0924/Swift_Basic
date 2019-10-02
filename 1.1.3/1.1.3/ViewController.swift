//
//  ViewController.swift
//  1.1.3
//
//  Created by Shota on 2019/09/18.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //課題３
        //for文
        for kuku1 in 1...9 {
            for kuku2 in 1...9 {
                print(kuku1 * kuku2)
            }
        }
        //if文
        let mileage =  5030 //メートル表記
        if mileage >= 5000 {
            print("「走行距離5kmを超えました。」")
        }
        //if-else文
        let num = -3
        if num > 0{
            print("\(num)は正の数です。")
        } else {
            print("\(num)は０か負の数です")
        }
        
        //if-else if文
        let report = 2234
        if report >= 2000 {
            print("卒論文字数は残り38000文字です")
        } else if report == 40000 {
            print("目標文字数を超えました、おめでとうございます")
            
        }
        //三項演算子
        let averageWeight = 60
        let yourWeight = 70
        
        averageWeight >= yourWeight ? print("あなたは痩せています") : print("あなたは太っています")
        
        //swichi文
        let  yourPoint = 1
        switch yourPoint {
        case 0:
            print("0です")
        case 1 :
            print("1です")
            
        default:
            print("異なった値です")
        }
        
    }


}

