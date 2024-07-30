//
//  HomeStatsView.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 24.06.2024.
//

import SwiftUI

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width, alignment: showPortfolio ? .trailing : .leading)
        
    }
}

struct HomeStatsView_Preview: PreviewProvider {
    static var previews: some View {
        HomeStatsView(showPortfolio: .constant(false))
            .previewLayout(.sizeThatFits)
            .environmentObject(dev.homeVm)
    }
}
