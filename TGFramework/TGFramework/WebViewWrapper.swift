//
//  WebViewWrapper.swift
//  TGFramework
//
//  Created by Teodora Garasanin on 9/24/19.
//  Copyright © 2019 Teodora Garasanin. All rights reserved.
//

import Foundation
import WebKit

public class WebViewWrapper {
    
    private init() {}
    
    public static func showWebView(storyboard: UIStoryboard) {
        let webView = WKWebView(frame: UIScreen.main.bounds)
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        let vc = storyboard.instantiateInitialViewController()
        vc?.view.addSubview(webView)
    }
}
