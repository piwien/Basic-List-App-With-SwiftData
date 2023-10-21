//
//  DataItem.swift
//  SwiftData-ListApp
//
//  Created by Berkay Yaşar on 21.10.2023.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
