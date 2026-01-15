//
//  Item.swift
//  AppClipTestClip
//
//  Created by Andrew Waters on 1/14/26.
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
