//
//  Site.swift
//  iTourPHPractice
//
//  Created by Mitch Andrade on 10/15/23.
//

import Foundation
import SwiftData

@Model
class Sight {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
