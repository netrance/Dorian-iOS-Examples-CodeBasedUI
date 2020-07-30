//
//  NavigationBarEx02Tests.swift
//  NavigationBarEx02Tests
//
//  Created by Dorian Lee on 2020/07/29.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest
@testable import NavigationBarEx02

class NavigationBarEx02Tests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testInitCustom() throws {
        let navigationBar = UINavigationBar()
        navigationBar.initCustom()
        XCTAssertEqual(UIBarStyle.black, navigationBar.barStyle)
        XCTAssertEqual(UIColor.blue, navigationBar.barTintColor)
        XCTAssertEqual(UIColor.white, navigationBar.titleTextAttributes?[.foregroundColor] as? UIColor)
    }

}
