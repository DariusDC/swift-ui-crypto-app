//
//  Color.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 23.06.2024.
//

import Foundation
import SwiftUI


extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchTeme()
}


struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
    
}


struct LaunchTeme {
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
