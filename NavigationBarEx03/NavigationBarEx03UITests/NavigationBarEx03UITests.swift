//
//  NavigationBarEx03UITests.swift
//  NavigationBarEx03UITests
//
//  Created by Dorian Lee on 2020/07/30.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest

class NavigationBarEx03UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testLeftBarButtonClick() throws {
        let app = XCUIApplication()
        app.launch()

        app.buttons["leftBarButton"].tap()
        XCTAssertTrue(app.navigationBars.staticTexts["Hello, left world"].exists)
    }

    func testRightBarButtonClick() throws {
        let app = XCUIApplication()
        app.launch()

        app.buttons["rightBarButton"].tap()
        XCTAssertTrue(app.navigationBars.staticTexts["Hello, right world"].exists)
    }

}
