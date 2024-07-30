//
//  ContentView.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 23.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent color")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Secondary text color")
                    .foregroundStyle(Color.theme.secondaryText)
                
                Text("Red color")
                    .foregroundStyle(Color.theme.red)
                
                Text("Green color")
                    .foregroundStyle(Color.theme.green)
            }
        }
    }
}

#Preview {
    ContentView()
}
