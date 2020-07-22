//
//  ViewController.swift
//  HelloWorld
//
//  Created by Dohyoung Lee on 2020/07/21.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import Then

class HelloWorldViewController: UIViewController {

    private let helloCenterWorldLabel = UILabel().then { (label) in
        label.text = "Hello, center world!"
        label.textColor = .black
    }

    private let helloTopOfWorldLabel = UILabel().then { (label) in
        label.text = "Hello, top of world!"
        label.textColor = .black
    }

    private let helloBottomOfWorldLabel = UILabel().then { (label) in
        label.text = "Hello, bottom of world!"
        label.textColor = .black
    }

    private let hiLeftWorldLabel = UILabel().then { (label) in
        label.text = "Hi,\nleft\nworld!"
        label.textColor = .black
        label.numberOfLines = 0
    }

    private let hiRightWorldLabel = UILabel().then { (label) in
        label.text = "Hi,\nright\nworld!"
        label.textColor = .black
        label.textAlignment = .right
        label.numberOfLines = 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        view.addSubview(helloCenterWorldLabel)
        view.addSubview(helloTopOfWorldLabel)
        view.addSubview(helloBottomOfWorldLabel)
        view.addSubview(hiLeftWorldLabel)
        view.addSubview(hiRightWorldLabel)

        helloCenterWorldLabel.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.centerY.equalToSuperview()
        }

        helloTopOfWorldLabel.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }

        helloBottomOfWorldLabel.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }

        hiLeftWorldLabel.snp.makeConstraints { (maker) in
            maker.centerY.equalToSuperview()
            maker.left.equalToSuperview()
        }

        hiRightWorldLabel.snp.makeConstraints { (maker) in
            maker.centerY.equalToSuperview()
            maker.right.equalToSuperview()
        }
    }

}

