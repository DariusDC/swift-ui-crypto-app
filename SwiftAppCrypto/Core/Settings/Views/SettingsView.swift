//
//  SettingsView.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 17.07.2024.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let linkedInURL = URL(string: "https://www.linkedin.com/in/darius-capolna-b95b351b4/")!
    let coingeckoURL = URL(string: "https://www.coingecko.com/en/api")!
    
    
    var body: some View {
        NavigationView(content: {
            List {
                personalDataSection
                coinGeckoSection
                applicationSection
            }
            .tint(.blue)
            .font(.headline)
            .listStyle(.grouped)
            .navigationTitle("Settings")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButton()
                }
            })
        })
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    private var personalDataSection: some View {
        Section {
            VStack(alignment: .leading, content: {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("This app was made for helping to improve my knowlegde about SwiftUI. So that I managed to build an app using Combine, MVVM pattern and Core Data")
                    .fontWeight(.medium)
                    .font(.callout)
                    .foregroundStyle(Color.theme.accent)
            })
            .padding(.vertical)
            
            Link("My Linkedin", destination: linkedInURL)
            
        } header: {
            Text("Darius Capolna")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading, content: {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("The cryptocurrency data that is used for this app comes from a free api called CoinGecko. Prices might be slightly delayed.")
                    .fontWeight(.medium)
                    .font(.callout)
                    .foregroundStyle(Color.theme.accent)
            })
            .padding(.vertical)
            
            Link("Visit CoinGecko", destination: coingeckoURL)
            
        } header: {
            Text("CoinGecko")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        } header: {
            Text("Application")
        }

    }
}
