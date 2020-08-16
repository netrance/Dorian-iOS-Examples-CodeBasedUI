//
//  ExTableViewCell.swift
//  UITableViewEx03
//
//  Created by Dorian Lee on 2020/08/10.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import UIKit
import SnapKit
import Then

class ExTableViewCell: UITableViewCell {

    let linkImageView = UIImageView()

    let linkNameLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 24.0, weight: .bold)
    }

    let linkURLLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 18.0)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initViews() {
        // After adding the 3 above views into this cell,
        // the cell is the superview of them.
        addSubview(linkImageView)
        addSubview(linkNameLabel)
        addSubview(linkURLLabel)

        // Locates this image view on the left side of this cell.
        // The left margine of the view are 10 pts.
        // The top margine of the view are 10 pts.
        // The bottom margine of the view are 10 pts.
        // The height of the cell is equal to (height of image) + (top padding) + (bottom padding) pts.
        linkImageView.snp.makeConstraints { (maker) in
            maker.left.top.equalToSuperview().offset(10)
            maker.bottom.equalToSuperview().offset(-10)
        }

        // Locates this label view 10 pts
        // from the right side of the above image view
        // and 10 pts from the top of the cell.
        linkNameLabel.snp.makeConstraints { (maker) in
            maker.top.equalToSuperview().offset(10)
            maker.left.equalTo(linkImageView.snp.right).offset(10)
        }

        // Locates this label view 10 pts
        // from the right side of the above image view
        // and 10 pts from the bottom of the cell
        linkURLLabel.snp.makeConstraints { (maker) in
            maker.left.equalTo(linkImageView.snp.right).offset(10)
            maker.bottom.equalToSuperview().offset(-10)
        }
    }

    func setContent(_ linkItem: LinkItem) {
        linkImageView.image = UIImage(named: linkItem.imageFileName)
        linkNameLabel.text = linkItem.name
        linkURLLabel.text = linkItem.linkURL
    }

    func setContent(_ linkItem: LinkItem, index: Int) {
        linkImageView.accessibilityIdentifier = String(format: "linkImageView-%02d", index)
        linkNameLabel.accessibilityIdentifier = String(format: "linkNameLabel-%02d", index)
        linkURLLabel.accessibilityIdentifier = String(format: "linkURLLabel-%02d", index)
        setContent(linkItem)
    }

}
