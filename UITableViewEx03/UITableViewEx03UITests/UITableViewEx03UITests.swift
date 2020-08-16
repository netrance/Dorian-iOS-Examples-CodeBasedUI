//
//  UITableViewEx03UITests.swift
//  UITableViewEx03UITests
//
//  Created by Dorian Lee on 2020/08/10.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest

class UITableViewEx03UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testViewExistence() throws {
        let app = XCUIApplication()
        app.launch()

        // Tests if this app has the table
        let table = app.tables["exTable"]
        XCTAssertTrue(table.exists)

        // Tests if the table has 5 cells
        let cells = table.cells
        XCTAssertEqual(5, cells.count)

        // Tests if each cell has the image and label views
        for i in 0 ... 4 {
            let cell = cells.element(boundBy: i)
            XCTAssertTrue(cell.images[String(format: "linkImageView-%02d", i)].exists)
            XCTAssertTrue(cell.staticTexts[String(format: "linkNameLabel-%02d", i)].exists)
            XCTAssertTrue(cell.staticTexts[String(format: "linkURLLabel-%02d", i)].exists)
        }
    }

}
