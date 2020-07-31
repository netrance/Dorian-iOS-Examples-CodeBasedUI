//
//  ViewController.swift
//  NavigationBarEx03
//
//  Created by Dorian Lee on 2020/07/30.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit

class ExViewController: UIViewController {

    private let leftBarButton: UIButton = {
        let button = UIButton()
        button.accessibilityIdentifier = "leftBarButton"
        button.setTitle("Left", for: .normal)
        return button
    }()

    private let rightBarButton: UIButton = {
        let button = UIButton()
        button.accessibilityIdentifier = "rightBarButton"
        button.setTitle("Right", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
        initViews()
    }

    private func initNavigationBar() {
        navigationItem.title = "Hello, world"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBarButton)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBarButton)

    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        leftBarButton.addTarget(self, action: #selector(onClickLeftBarButton), for: .touchUpInside)
        rightBarButton.addTarget(self, action: #selector(onClickRightBarButton), for: .touchUpInside)
    }

    @objc
    func onClickLeftBarButton() {
        navigationItem.title = "Hello, left world"
    }

    @objc
    func onClickRightBarButton() {
        navigationItem.title = "Hello, right world"
    }

}

