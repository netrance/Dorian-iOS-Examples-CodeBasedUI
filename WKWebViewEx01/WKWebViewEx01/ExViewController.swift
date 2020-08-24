//
//  ViewController.swift
//  WKWebViewEx01
//
//  Created by Dorian Lee on 2020/08/22.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import WebKit

class ExViewController: UIViewController {

    lazy var exWebView: WKWebView = {
        let webConfiguration: WKWebViewConfiguration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)

        webView.accessibilityIdentifier = "exWebView"
        webView.uiDelegate = self
        webView.navigationDelegate = self

        return webView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
        initViews()
    }

    private func initNavigationBar() {
        navigationItem.title = "WKWebViewEx01"
    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)

        view.addSubview(exWebView)
        exWebView.snp.makeConstraints { (maker) in
            maker.top.bottom.left.right.equalToSuperview()
        }
        exWebView.load(string: "https://www.google.com")
    }

}

// Now empty but will implement its methods
extension ExViewController: WKUIDelegate {
}

// Now empty but will implement its methods
extension ExViewController: WKNavigationDelegate {
}
