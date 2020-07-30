//
//  NavigationBarEx02UITests.swift
//  NavigationBarEx02UITests
//
//  Created by Dorian Lee on 2020/07/29.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest

class NavigationBarEx02UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.navigationBars.staticTexts["Hello, world"].exists)
    }

}
