//
//  BaseViewController.swift
//  Bewkoof
//
//  Created by Avikant Saini on 7/16/16.
//  Copyright © 2016 Dark Army. All rights reserved.
//

import UIKit
import WebKit

class BaseViewController: UIViewController {
	
	var URLString: String = "https://www.bewakoof.com"
	
	var URLRequest: NSURLRequest {
		get {
			return NSURLRequest(URL: NSURL(string: URLString)!)
		}
	}
	
	var webView: WKWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
		
		webView = WKWebView()
		webView?.navigationDelegate = self
		
		self.view.addSubview(webView!)
		
		webView?.loadRequest(URLRequest)
		

        // Do any additional setup after loading the view.
    }
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		
		webView?.translatesAutoresizingMaskIntoConstraints = false
		self.view.addConstraint(NSLayoutConstraint.init(item: self.topLayoutGuide, attribute: .Top, relatedBy: .Equal, toItem: webView!, attribute: .Top, multiplier: 1, constant: 0))
		self.view.addConstraint(NSLayoutConstraint.init(item: self.bottomLayoutGuide, attribute: .Top, relatedBy: .Equal, toItem: webView!, attribute: .Bottom, multiplier: 1, constant: -13))
		self.view.addConstraint(NSLayoutConstraint.init(item: self.view, attribute: .LeadingMargin, relatedBy: .Equal, toItem: webView!, attribute: .Leading, multiplier: 1, constant: 20))
		self.view.addConstraint(NSLayoutConstraint.init(item: self.view, attribute: .TrailingMargin, relatedBy: .Equal, toItem: webView!, attribute: .Trailing, multiplier: 1, constant: -20))
		
	}
	
	override func prefersStatusBarHidden() -> Bool {
		return true
	}
	
}

extension BaseViewController : WKNavigationDelegate {
	
	func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
		
		webView.evaluateJavaScript("document.getElementsByClassName('_mGetOurApp')[0].style.visibility = 'Hidden'", completionHandler: nil)
		webView.evaluateJavaScript("document.getElementsByClassName('_mGetOurApp')[1].style.visibility = 'Hidden'", completionHandler: nil)
		
	}
	
}
