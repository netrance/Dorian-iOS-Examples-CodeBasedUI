//
//  ViewController.swift
//  UITableViewEx01
//
//  Created by Dorian Lee on 2020/08/05.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import Then

class ExViewController: UIViewController {

    private let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

    private let exTable = UITableView().then { (table) in
        table.accessibilityIdentifier = "exTable"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
        initViews()
    }

    private func initNavigationBar() {
        navigationItem.title = "UITableViewEx01"
    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)

        view.addSubview(exTable)
        exTable.dataSource = self
        exTable.delegate = self
        exTable.snp.makeConstraints { (maker) in
            maker.top.bottom.left.right.equalToSuperview()
        }
    }

}

extension ExViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "exTableElement\(indexPath.row)")
        cell.textLabel?.text = "\(numbers[indexPath.row])"
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
