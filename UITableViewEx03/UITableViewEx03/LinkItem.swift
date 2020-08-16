//
//  LinkItem.swift
//  UITableViewEx03
//
//  Created by Dorian Lee on 2020/08/10.
//  Copyright © 2020 Dorian Lee. All rights reserved.
//

import Foundation

class LinkItem {

    let name: String
    let imageFileName: String
    let linkURL: String
    
    init(name: String, imageFileName: String, linkURL: String) {
        self.name = name
        self.imageFileName = imageFileName
        self.linkURL = linkURL
    }

}

extension LinkItem {

    static func createLinkItemList() -> [LinkItem] {
        return [
            LinkItem(name: "Facebook", imageFileName: "facebook.png", linkURL: "https://www.facebook.com/"),
            LinkItem(name: "Instagram", imageFileName: "instagram.png", linkURL: "https://www.instagram.com/"),
            LinkItem(name: "Linkedin", imageFileName: "linkedin.png", linkURL: "https://www.linkedin.com/"),
            LinkItem(name: "Twitter", imageFileName: "twitter.png", linkURL: "https://twitter.com/"),
            LinkItem(name: "YouTube", imageFileName: "youtube.png", linkURL: "https://www.youtube.com/")
        ]
    }

}
