//
//  NavigationBarEx04UITests.swift
//  NavigationBarEx04UITests
//
//  Created by Dorian Lee on 2020/07/31.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest

class NavigationBarEx04UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testClickingBarButtons() throws {
        let app = XCUIApplication()
        app.launch()

        XCTAssertEqual("This is step 1 page.", app.staticTexts["step1DescriptionLabel"].label)
        app.buttons["step2BarButton"].tap()
        XCTAssertEqual("This is step 2 page.", app.staticTexts["step2DescriptionLabel"].label)
        app.buttons["step3BarButton"].tap()
        XCTAssertEqual("This is step 3 page.", app.staticTexts["step3DescriptionLabel"].label)
        app.buttons["step2BarButton"].tap()
        XCTAssertEqual("This is step 2 page.", app.staticTexts["step2DescriptionLabel"].label)
        app.buttons["step1BarButton"].tap()
        XCTAssertEqual("This is step 1 page.", app.staticTexts["step1DescriptionLabel"].label)
    }

}
