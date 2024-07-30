//
//  UIApplication.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 24.06.2024.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
