//
//  PhotoModel.swift
//  NewAppCollageLounge
//
//  Created by Feduk on 01.10.2021.
//

import Foundation
import SwiftUI

class PhotoModel:ObservableObject {
    func openVK() {
        let appURL = NSURL(string: "https://vk.com/ilyxa48")!
        let safariURL = NSURL(string: "https://vk.com/ilyxa48")!

        if UIApplication.shared.canOpenURL(appURL as URL){
            UIApplication.shared.openURL(appURL as URL)
        } else {
            UIApplication.shared.openURL(safariURL as URL)
        }
    }
}
