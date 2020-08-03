//
//  NavigationBarExt.swift
//  NavigationBarEx04
//
//  Created by Dorian Lee on 2020/07/31.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationBar {

    func initCustom() {
        barStyle = UIBarStyle.black
        barTintColor = .red
        titleTextAttributes = [
            .foregroundColor : UIColor.white
        ]

        // to prevent overlapping this bar and the views of UIViewController objects
        isTranslucent = false
    }

}
