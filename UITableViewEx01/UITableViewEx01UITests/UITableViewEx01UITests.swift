//
//  UITableViewEx01UITests.swift
//  UITableViewEx01UITests
//
//  Created by Dorian Lee on 2020/08/05.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest

class UITableViewEx01UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testTableContent() throws {
        let app = XCUIApplication()
        app.launch()

        let table = app.tables["exTable"]
        XCTAssertTrue(table.exists)

        let cells = table.cells
        XCTAssertEqual(19, cells.count)

        let cell0 = cells.element(boundBy: 0)
        XCTAssertTrue(cell0.staticTexts["1"].exists)

        let cell1 = cells.element(boundBy: 1)
        XCTAssertTrue(cell1.staticTexts["2"].exists)

        let cell2 = cells.element(boundBy: 2)
        XCTAssertTrue(cell2.staticTexts["3"].exists)

        let cell3 = cells.element(boundBy: 3)
        XCTAssertTrue(cell3.staticTexts["4"].exists)

        let cell4 = cells.element(boundBy: 4)
        XCTAssertTrue(cell4.staticTexts["5"].exists)

        let cell5 = cells.element(boundBy: 5)
        XCTAssertTrue(cell5.staticTexts["6"].exists)

        let cell6 = cells.element(boundBy: 6)
        XCTAssertTrue(cell6.staticTexts["7"].exists)

        let cell7 = cells.element(boundBy: 7)
        XCTAssertTrue(cell7.staticTexts["8"].exists)

        let cell8 = cells.element(boundBy: 8)
        XCTAssertTrue(cell8.staticTexts["9"].exists)

        let cell9 = cells.element(boundBy: 9)
        XCTAssertTrue(cell9.staticTexts["10"].exists)

        let cell10 = cells.element(boundBy: 10)
        XCTAssertTrue(cell10.staticTexts["20"].exists)

        let cell11 = cells.element(boundBy: 11)
        XCTAssertTrue(cell11.staticTexts["30"].exists)

        let cell12 = cells.element(boundBy: 12)
        XCTAssertTrue(cell12.staticTexts["40"].exists)

        let cell13 = cells.element(boundBy: 13)
        XCTAssertTrue(cell13.staticTexts["50"].exists)

        let cell14 = cells.element(boundBy: 14)
        XCTAssertTrue(cell14.staticTexts["60"].exists)

        let cell15 = cells.element(boundBy: 15)
        XCTAssertTrue(cell15.staticTexts["70"].exists)

        let cell16 = cells.element(boundBy: 16)
        XCTAssertTrue(cell16.staticTexts["80"].exists)

        let cell17 = cells.element(boundBy: 17)
        XCTAssertTrue(cell17.staticTexts["90"].exists)

        let cell18 = cells.element(boundBy: 18)
        XCTAssertTrue(cell18.staticTexts["100"].exists)
    }

}
