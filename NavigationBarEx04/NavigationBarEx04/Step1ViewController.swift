//
//  ViewController.swift
//  NavigationBarEx04
//
//  Created by Dorian Lee on 2020/07/31.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import Then

class Step1ViewController: UIViewController {

    private let step2BarButton = UIButton().then { (button) in
        button.accessibilityIdentifier = "step2BarButton"
        button.setTitle("Step 2 >", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
    }

    private let step1DescriptionLabel = UILabel().then { (label) in
        label.accessibilityIdentifier = "step1DescriptionLabel"
        label.text = "This is step 1 page."
        label.textColor = .black
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
        initViews()
    }

    private func initNavigationBar() {
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Step 1"
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: step2BarButton)
    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        step2BarButton.addTarget(self, action: #selector(onClickStep2BarButton), for: .touchUpInside)

        view.addSubview(step1DescriptionLabel)
        step1DescriptionLabel.snp.makeConstraints { (maker) in
            maker.centerX.centerY.equalToSuperview()
        }
    }

    @objc
    func onClickStep2BarButton() {
        let step2VC = Step2ViewController()
        navigationController?.pushViewController(step2VC, animated: true)
    }
}

