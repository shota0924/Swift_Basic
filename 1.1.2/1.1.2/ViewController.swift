//
//  ViewController.swift
//  1.1.2
//
//  Created by Shota on 2019/09/18.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var stringOne:[String] = ["掃除","洗濯","皿洗い","ゴミ捨て"]
        var numberThreeToSix:[[Int]] = [[3,4],[5,6]]
        
        var dictionaryOne:[String:Int] = ["掃除":2,"洗濯":9,"皿洗い":7,"ゴミ捨て":8]
        
        print(stringOne[2])
        print(numberThreeToSix[0])
        print(dictionaryOne["掃除"] as Any)
    }


}



