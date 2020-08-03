//
//  Step2ViewController.swift
//  NavigationBarEx04
//
//  Created by Dorian Lee on 2020/07/31.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import Then

class Step2ViewController: UIViewController {

    private let step1BarButton = UIButton().then { (button) in
        button.accessibilityIdentifier = "step1BarButton"
        button.setTitle("< Step 1", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
    }

    private let step3BarButton = UIButton().then { (button) in
        button.accessibilityIdentifier = "step3BarButton"
        button.setTitle("Step 3 >", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
    }

    private let step2DescriptionLabel = UILabel().then { (label) in
        label.accessibilityIdentifier = "step2DescriptionLabel"
        label.text = "This is step 2 page."
        label.textColor = .black
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
        initViews()
    }

    private func initNavigationBar() {
        navigationItem.title = "Step 2"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: step1BarButton)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: step3BarButton)
    }

    private func initViews() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)

        step1BarButton.addTarget(self, action: #selector(onClickStep1BarButton), for: .touchUpInside)
        step3BarButton.addTarget(self, action: #selector(onClickStep3BarButton), for: .touchUpInside)
        
        view.addSubview(step2DescriptionLabel)
        step2DescriptionLabel.snp.makeConstraints { (maker) in
            maker.centerX.centerY.equalToSuperview()
        }
    }

    @objc
    func onClickStep1BarButton() {
        navigationController?.popViewController(animated: true)
    }

    @objc
    func onClickStep3BarButton() {
        let step3VC = Step3ViewController()
        navigationController?.pushViewController(step3VC, animated: true)
    }

}
