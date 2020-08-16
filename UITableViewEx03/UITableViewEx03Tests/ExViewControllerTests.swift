//
//  UITableViewEx03Tests.swift
//  UITableViewEx03Tests
//
//  Created by Dorian Lee on 2020/08/10.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import XCTest
@testable import UITableViewEx03

class TestExViewController: ExViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension TestExViewController {

    /// Tests counts of section and link items
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        XCTAssertEqual(0, section)
        XCTAssertEqual(5, linkItemList.count)
        return super.tableView(tableView, numberOfRowsInSection: section)
    }

    ///  Tests contents of each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        guard let cell = super.tableView(tableView, cellForRowAt: indexPath) as? ExTableViewCell else {
            XCTFail("Could not create ExTableViewCell object.")
            return super.tableView(tableView, cellForRowAt: indexPath)
        }
        
        XCTAssertEqual(UIImage(named: linkItemList[row].imageFileName), cell.linkImageView.image)
        XCTAssertEqual(linkItemList[row].name, cell.linkNameLabel.text)
        XCTAssertEqual(linkItemList[row].linkURL, cell.linkURLLabel.text)

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

    func testCellData() throws {
        testVC.exTable.reloadData()    // Cells are created.
    }

}
