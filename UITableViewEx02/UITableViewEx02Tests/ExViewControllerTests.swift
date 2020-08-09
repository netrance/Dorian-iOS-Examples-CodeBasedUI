//
//  ExViewControllerTests.swift
//  ExViewControllerTests
//
//  Created by Dorian Lee on 2020/08/06.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest
@testable import UITableViewEx02

class TestExViewController: ExViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension TestExViewController {

    /// Tests counts of section and menu items
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        XCTAssertEqual(0, section)
        XCTAssertEqual(5, menuItems.count)
        return super.tableView(tableView, numberOfRowsInSection: section)
    }

    ///  Tests text and image contents of each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        
        XCTAssertEqual(UIImage(named: menuItems[indexPath.row].image), cell.imageView?.image)
        XCTAssertEqual(menuItems[row].name, cell.textLabel?.text)
        return cell
    }

}

class ExViewControllerTests: XCTestCase {

    let testVC = TestExViewController()

    override func setUpWithError() throws {
        testVC.loadViewIfNeeded()    // viewDidLoad() is called.
    }

    override func tearDownWithError() throws {
    }

    /// Tests if data are normally loaded into the cells of the table
    func testCellData() throws {
        testVC.exTable.reloadData()    // Cells are created.
    }

}
