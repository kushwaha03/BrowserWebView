//
//  ViewController.swift
//  BrowserWebView
//
//  Created by Krishna Kushwaha on 11/05/21.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate {
    //    var webView: WKWebView!
        @IBOutlet weak var webView: WKWebView!


    //    override func loadView() {
    //        webView = WKWebView()
    //        webView.navigationDelegate = self
    //        view = webView
    //    }

        override func viewDidLoad() {
            super.viewDidLoad()
            webView.navigationDelegate = self

            let url = URL(string: "https://www.dropbox.com/home?preview=webFile.html")!
            webView.load(URLRequest(url: url))
            webView.allowsBackForwardNavigationGestures = true
        }


    }

