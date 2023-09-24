//
//  Item.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
