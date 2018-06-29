//
//  ViewController.swift
//  HelloWkWebView
//
//  Created by 林奕德 on 2018/4/4.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit
import WebKit //加入網頁
class ViewController: UIViewController,WKNavigationDelegate {
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.navigationDelegate = self
        if let url = URL(string: "https://www.apple.com"){
           let request = URLRequest(url: url)
            myWebView.load(request)//顯示網頁
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()//start
    }//載入時
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()//stop
    }//完成時

}

