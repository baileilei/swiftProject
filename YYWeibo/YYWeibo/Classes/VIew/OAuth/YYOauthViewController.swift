//
//  YYOauthViewController.swift
//  YYWeibo
//
//  Created by godot on 2018/10/9.
//  Copyright © 2018年 g. All rights reserved.
//App Key：3773659896
//App Secret：47abb0072c74413bc165bc3366559a08
//http://www.baidu.com

let weiBoAppKey = "3773659896"
let weiBoAppSecret = "47abb0072c74413bc165bc3366559a08"
let weiBoRedirect_Uri = "http://www.baidu.com"





import UIKit

class YYOauthViewController: UIViewController {
    
    private lazy var webView: UIWebView = UIWebView()
    
    override func loadView() {
        webView.delegate = self as! UIWebViewDelegate
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        requestLogin()

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "取消", target: self, action: #selector(cancelAction))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "自动填充", target: self, action: #selector(autoFill))
        navigationItem.title = "登录"
    }
    
    private func requestLogin(){
//        let url = "https://api.weibo.com/oauth2/authorize?client_id=\(weiBoAppKey)&redirect_uri=\(weiBoRedirect_Uri)"
         let url = "https://api.weibo.com/oauth2/authorize?client_id=\(weiBoAppKey)&redirect_uri=\(weiBoRedirect_Uri)"
        let urlRequest = URLRequest(url: URL(string: url)!)
        
        webView.loadRequest(urlRequest)
        
        
    }
    
    
    @objc func cancelAction() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func autoFill(){
        webView.stringByEvaluatingJavaScript(from: "document.getElementById(userId).value = '15300230977';document.getElementById('passwd').value = '2012213576bss'")
    }
    
    func requestAccessToken(code:String){
        print(code)
    }

}

extension YYOauthViewController: UIWebViewDelegate{
    func webViewDidStartLoad(_ webView: UIWebView) {
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        guard let url = request.url else { return false }
        
        print(url.absoluteString)
        
        if !url.absoluteString.hasPrefix(weiBoRedirect_Uri) {
            return true
        }
        
        if let query = url.query, query.hasPrefix("code=") {
            let code = query.substring(from: "code=".endIndex)
            
        }
        
        
        return false
    }
}
