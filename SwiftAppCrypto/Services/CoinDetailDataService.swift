//
//  CoinDetailDataService.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 17.07.2024.
//

import Combine
import Foundation

class CoinDetailDataService {
    
    @Published var coinDetails: CoinDetailModel? = nil
    
    var subscription: AnyCancellable?
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinDetails()
    }
    
    func getCoinDetails() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false") else { return }
        
        subscription = NetworkingManager.download(url: url)
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, 
                  receiveValue: { [weak self] coinDetail in
                self?.coinDetails = coinDetail
                self?.subscription?.cancel()
            })
    }
    
}
