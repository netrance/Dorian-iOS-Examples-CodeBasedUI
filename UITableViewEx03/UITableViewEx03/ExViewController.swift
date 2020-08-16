//
//  ViewController.swift
//  UITableViewEx03
//
//  Created by Dorian Lee on 2020/08/10.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import Then

class ExViewController: UIViewController {

    let linkItemList = LinkItem.createLinkItemList()

    lazy var exTable = UITableView().then { (table) in
        table.accessibilityIdentifier = "exTable"
        table.dataSource = self
        table.delegate = self

        table.register(ExTableViewCell.self, forCellReuseIdentifier: String(describing: ExTableViewCell.self))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
        initViews()
    }

    private func initNavigationBar() {
        navigationItem.title = "UITableViewEx03"
    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)

        view.addSubview(exTable)
        exTable.snp.makeConstraints { (maker) in
            maker.top.bottom.left.right.equalToSuperview()
        }
    }

}

extension ExViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return linkItemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = tableView.dequeueReusableCell(
            withIdentifier: String(describing: ExTableViewCell.self)
        ) as! ExTableViewCell

        cell.setContent(linkItemList[row], index: row)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
   
}
