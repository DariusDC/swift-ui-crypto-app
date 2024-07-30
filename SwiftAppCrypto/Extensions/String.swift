//
//  String.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 17.07.2024.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
