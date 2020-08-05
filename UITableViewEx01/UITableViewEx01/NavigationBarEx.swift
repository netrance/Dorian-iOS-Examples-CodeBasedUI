//
//  NavigationBarEx.swift
//  UITableViewEx01
//
//  Created by Dorian Lee on 2020/08/05.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationBar {

    func initCustom() {
        barStyle = UIBarStyle.black
        barTintColor = .orange
        titleTextAttributes = [
            .foregroundColor : UIColor.white
        ]

        // to prevent overlapping this bar and the views of UIViewController objects
        isTranslucent = false
    }

}
