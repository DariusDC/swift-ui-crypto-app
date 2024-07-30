//
//  HapticManager.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 15.07.2024.
//

import Foundation
import SwiftUI

class HapticManager {
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
