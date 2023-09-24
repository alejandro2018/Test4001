//
//  OneName.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import Foundation

struct OneName: Identifiable, Hashable {

    let id = UUID()
    var name1: String
}

extension OneName {
    static let exonename: [OneName] = [
     .init(name1: "One"),
     .init(name1: "Two"),
     .init(name1: "Three"),
    ]
}
