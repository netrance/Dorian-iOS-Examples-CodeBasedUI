//
//  WKWebViewEx01Tests.swift
//  WKWebViewEx01Tests
//
//  Created by Dorian Lee on 2020/08/22.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest
@testable import WKWebViewEx01

class ExViewControllerTests: XCTestCase {

    var vc: ExViewController?

    override func setUpWithError() throws {
        vc = ExViewController()
    }

    override func tearDownWithError() throws {
    }

    func testIsLoading() throws {
        if let isLoading = vc?.exWebView.isLoading {
            XCTAssertFalse(isLoading)
        }
    }

    func testCanGoBack() throws {
        if let canGoBack = vc?.exWebView.canGoBack {
            XCTAssertFalse(canGoBack)
        }
    }

    func testURL() throws {
        if let urlString = vc?.exWebView.url?.absoluteString {
            XCTAssertEqual("https://www.google.com", urlString)
        }
    }

}
