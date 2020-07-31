//
//  NavigationBarExt.swift
//  NavigationBarEx02
//
//  Created by Dorian Lee on 2020/07/29.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationBar {

    func initCustom() {
        barStyle = UIBarStyle.black
        barTintColor = .blue
        titleTextAttributes = [
            .foregroundColor : UIColor.white
        ]
    }

}
