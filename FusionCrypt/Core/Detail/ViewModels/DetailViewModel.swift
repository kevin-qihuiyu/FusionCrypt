//
//  DetailViewModel.swift
//  FusionCrypt
//
//  Created by qihuiyu on 29/04/2023.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
//    @Published var coinDetail: CoinDetailModel

    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink(receiveValue: { returnedCoinDetails in
                print("good")
            })
//            .sink { [weak self] (returnedCoinDetails) in
//                if let coinDetails = returnedCoinDetails {
//                    self?.coinDetail = coinDetails
//                }
//            }
            .store(in: &cancellables)

    }
}
