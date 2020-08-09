//
//  ViewController.swift
//  UITableViewEx02
//
//  Created by Dorian Lee on 2020/08/06.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import Then

class ExViewController: UIViewController {

    let menuItems = [
        MenuItem(name: "Facebook", image: "facebook.png"),
        MenuItem(name: "Instagram", image: "instagram.png"),
        MenuItem(name: "Linkedin", image: "linkedin.png"),
        MenuItem(name: "Twitter", image: "twitter.png"),
        MenuItem(name: "YouTube", image: "youtube.png")
    ]

    lazy var exTable = UITableView().then { (table) in
        table.accessibilityIdentifier = "exTable"
        table.dataSource = self
        table.delegate = self
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
        exTable.snp.makeConstraints { (maker) in
            maker.top.bottom.left.right.equalToSuperview()
        }
    }

}

extension ExViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = UITableViewCell(style: .default, reuseIdentifier: String(describing: UITableViewCell.self))
        cell.imageView?.image = UIImage(named: menuItems[row].image)
        cell.imageView?.accessibilityIdentifier = "imageView\(row)"
        cell.textLabel?.text = "\(menuItems[row].name)"
        cell.textLabel?.accessibilityIdentifier = "textView\(row)"

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
   
}
