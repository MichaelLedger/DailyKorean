//
//  DKWebViewController.swift
//  DailyKorean
//
//  Created by MountainX on 2019/5/17.
//  Copyright © 2019 MTX Software Technology Co.,Ltd. All rights reserved.
//

import UIKit
import WebKit

class DKWebViewController: UIViewController {

    let webView = WKWebView(frame: CGRect(), configuration: WKWebViewConfiguration())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // setup webview
        webView.frame = view.bounds
        webView.navigationDelegate = self
        view.addSubview(webView)
        
        loadAlphabet()
    }
    
    // load local html in bundle
    func loadAlphabet() {
        enum LoadAlphabetError: Error {
            case nilBundlePath
            case nilHtmlPath
        }
        
        do {
            guard let customBundlePath = Bundle.main.path(forResource: "alphabet", ofType: "bundle") else {
                throw LoadAlphabetError.nilBundlePath
            }
            let customBundle = Bundle(path: customBundlePath)
            guard let htmlPath = (customBundle?.path(forResource: "index", ofType: "html", inDirectory: nil)) else {
                throw LoadAlphabetError.nilHtmlPath
            }
            webView.load(URLRequest(url: URL(fileURLWithPath: htmlPath)))
        } catch LoadAlphabetError.nilBundlePath {
            print("Cannot find alphabet.bundle !!!")
        } catch LoadAlphabetError.nilHtmlPath {
            print("Cannot find index.html in alphabet.bundle !!!")
        } catch let error {
            print("loadAlphabetHtmlError:\(error)")
        }
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

extension DKWebViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
//        print("webViewDidStartLoad")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        print("webViewDidFinishLoad")
    }
}
