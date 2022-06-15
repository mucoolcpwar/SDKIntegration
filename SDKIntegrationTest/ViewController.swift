//
//  ViewController.swift
//  SDKIntegrationTest
//
//  Created by Mukul on 14/06/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        webView.load(URLRequest.init(url: URL.init(string: "https://www.google.com")!))
        
        if let url = Bundle.main.url(forResource: "clevertap", withExtension: "html") {

            self.webView.loadFileURL(url, allowingReadAccessTo: url)
        }
    }


}

