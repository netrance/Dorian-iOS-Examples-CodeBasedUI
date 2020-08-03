//
//  Step3ViewController.swift
//  NavigationBarEx04
//
//  Created by Dorian Lee on 2020/07/31.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import Then

class Step3ViewController: UIViewController {

    private let step2BarButton = UIButton().then { (button) in
        button.accessibilityIdentifier = "step2BarButton"
        button.setTitle("< Step 2", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
    }

    private let step3DescriptionLabel = UILabel().then { (label) in
        label.accessibilityIdentifier = "step3DescriptionLabel"
        label.text = "This is step 3 page."
        label.textColor = .black
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
        initViews()
    }

    private func initNavigationBar() {
        navigationItem.title = "Step 3"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: step2BarButton)
    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        step2BarButton.addTarget(self, action: #selector(onClickStep2BarButton), for: .touchUpInside)

        view.addSubview(step3DescriptionLabel)
        step3DescriptionLabel.snp.makeConstraints { (maker) in
            maker.centerX.centerY.equalToSuperview()
        }
    }

    @objc
    func onClickStep2BarButton() {
        navigationController?.popViewController(animated: true)
    }

}
