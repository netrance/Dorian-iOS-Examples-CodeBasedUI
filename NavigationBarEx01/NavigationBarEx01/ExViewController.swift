//
//  ExViewController.swift
//  NavigationBarEx01
//
//  Created by Dorian Lee on 2020/07/29.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit

class ExViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
        initViews()
    }

    private func initNavigationBar() {
        navigationItem.title = "Hello, world"
    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
    }

}
