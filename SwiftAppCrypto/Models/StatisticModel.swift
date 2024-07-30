//
//  StatisticModel.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 24.06.2024.
//

import Foundation

struct StatisticModel: Identifiable {
    var id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double?) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
    
    init(title: String, value: String) {
        self.title = title
        self.value = value
        self.percentageChange = nil
    }
}

