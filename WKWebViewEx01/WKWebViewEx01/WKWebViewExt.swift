//
//  WKWebViewExt.swift
//  WKWebViewEx01
//
//  Created by Dorian Lee on 2020/08/22.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView {

    func load(string: String) {
        guard let url = URL(string: string) else {
            return
        }

        let request = URLRequest(url: url)
        load(request)
    }

}
