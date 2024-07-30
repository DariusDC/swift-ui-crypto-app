//
//  CoinImageViewModel.swift
//  SwiftAppCrypto
//
//  Created by Darius Capolna on 23.06.2024.
//

import Combine
import SwiftUI

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: self.coin)
        addSubscribes()
    }
    
    private func addSubscribes() {
        
        dataService.$image
            .sink { [weak self] _ in
                self?.isLoading = true
            } receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
            }
            .store(in: &cancellables)
                
        
    }
    
}
