//
//  ViewController.swift
//  2.1.8
//
//  Created by Shota on 2019/11/05.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit




class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return foodList.count
    }
    
    @IBOutlet weak var foodLabel: UILabel!
    let foodList = ["焼肉","寿司","ラーメン","パスタ","ピザ"]
    
    @IBAction func pickerOutButton(_ sender: Any) {
        
    }
    
    @IBOutlet weak var foodPicker: UIPickerView!
    @IBAction func hiddenButton(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return foodList[row]
       }
       // pickerが選択された際に呼ばれるデリゲートメソッド.
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           foodLabel.text = foodList [row]
       }
}
