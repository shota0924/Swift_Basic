//
//  ViewController.swift
//  2.1.8(ReRe)
//
//  Created by Shota on 2019/12/11.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

let ittoSanken:[String] = ["東京","神奈川","千葉","埼玉"]

class PickerView:UIControl {
    
     required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            
            addTarget(self, action: #selector(tappedPickerKeyboard(_:)), for: .touchDown)
        }
        
        @objc private func tappedPickerKeyboard(_ sender: PickerView) {
            self.becomeFirstResponder()
        }
    override var canBecomeFirstResponder: Bool {
           return true
       }
    override var inputAccessoryView: UIView? {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .extraLight))
        view.frame = CGRect(x: 0, y: 0, width: frame.width, height: 44)
        
        let closeButton = UIButton(type: .custom)
        closeButton.setTitle("閉じる", for: .normal)
        closeButton.sizeToFit()
        closeButton.addTarget(self, action: #selector(tappedCloseButton(_:)), for: .touchUpInside)
        closeButton.setTitleColor(UIColor(red: 0, green: 122/255, blue: 1, alpha: 1.0), for: .normal)
        
        view.contentView.addSubview(closeButton)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.widthAnchor.constraint(equalToConstant: closeButton.frame.size.width).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: closeButton.frame.size.height).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
        closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        return view
    }
       
    
    override var inputView: UIView? {
        
        let pickerView: UIPickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.backgroundColor = UIColor.white
        pickerView.autoresizingMask = [.flexibleHeight]
        
        // SafeAreaに対応させる為にUIViewを挟む
        let view = UIView()
        view.backgroundColor = .white
        view.autoresizingMask = [.flexibleHeight]
        view.addSubview(pickerView)
        
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pickerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pickerView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        
        return view
    }
    
     @objc private func tappedCloseButton(_ sender: UIButton) {
            resignFirstResponder()
        }
    }

    extension PickerView: UIPickerViewDelegate, UIPickerViewDataSource {
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return ittoSanken.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return ittoSanken[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            // delegateなどでViewControllerに選択された情報を渡す
        }
    }
    
  


