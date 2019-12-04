//
//  ViewController.swift
//  2.1.10
//
//  Created by Shota on 2019/12/03.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       //表示するデータソースをPlistにする。
        return Items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = Items[indexPath.row]
        return cell
    }
    let Items:[String] = ["肉を買う","米を買う","野菜を買う","魚を買う","粉類を買う",""]
    
        override func viewDidLoad() {
            super.viewDidLoad()
        }
}



