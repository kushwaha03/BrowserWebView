//
//  WebFileViewController.swift
//  BrowserWebView
//
//  Created by Krishna Kushwaha on 11/05/21.
//

import UIKit
import WebKit
class WebFileViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var htmlFile = Bundle.main.path(forResource: "webFile", ofType: "html")
        var htmlString = try? String(contentsOfFile: htmlFile!, encoding: String.Encoding.utf8)
        webView.loadHTMLString(htmlString!, baseURL: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
