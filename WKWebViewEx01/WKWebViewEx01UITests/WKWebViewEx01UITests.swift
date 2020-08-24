//
//  WKWebViewEx01UITests.swift
//  WKWebViewEx01UITests
//
//  Created by Dorian Lee on 2020/08/22.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest

class WKWebViewEx01UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        let exWebView = app.webViews["exWebView"]
        XCTAssertTrue(exWebView.exists)
    }

}
