//
//  MarketDataService.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 24.06.2024.
//

import Foundation

import Foundation
import Combine
import RxSwift

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getMarketData()
    }
    
    func getMarketData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else {
            return
        }

        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: {
                [weak self] (returnedGlobalData) in
                    self?.marketData = returnedGlobalData.data
                    self?.marketDataSubscription?.cancel()
            })
    }
    

}
