//
//  ViewController.swift
//  2.1.6
//
//  Created by Shota on 2019/10/16.
//  Copyright © 2019 Shota Kawasaki. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate ,WKNavigationDelegate {
    
    
    @IBOutlet weak var myWebView: WKWebView!
    
    @IBOutlet weak var toolBer: UIToolbar!
    
    @IBOutlet weak var goButton: UIBarButtonItem!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    
    
    @IBAction func goButtonAct(_ sender: Any) {
        self.myWebView.goForward()
    }
    @IBAction func backButtonAct(_ sender: Any) {
        self.myWebView.goBack()
    }
    @IBAction func reloadButtonAct(_ sender: Any) {
        self.myWebView.reload()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlString = "https://www.google.com/"
        let encodedUrlString = urlString.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)
        
        let url = URL(string: encodedUrlString!)
        let request = NSURLRequest(url: url! as URL)
        
       myWebView.load(request as URLRequest)
    }
        
              
              
}





