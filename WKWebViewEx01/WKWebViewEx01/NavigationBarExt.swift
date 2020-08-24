//
//  NavigationBarExt.swift
//  WKWebViewEx01
//
//  Created by Dorian Lee on 2020/08/22.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import Foundation

import Foundation
import UIKit

extension UINavigationBar {

    func initCustom() {
        barStyle = UIBarStyle.black
        barTintColor = .lightGray
        titleTextAttributes = [
            .foregroundColor : UIColor.white
        ]

        // to prevent overlapping this bar and the views of UIViewController objects
        isTranslucent = false
    }

}
