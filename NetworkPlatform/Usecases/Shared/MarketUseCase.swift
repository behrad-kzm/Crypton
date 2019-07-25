//
//  MarketUseCase.swift
//  NetworkPlatform
//
//  Created by Salar Soleimani on 7/24/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxSwift

public struct MarketUseCase: Domain.MarketUseCase {
  private let manager: Domain.PositionManager
	
  public init (manager: Domain.PositionManager) {
    self.manager = manager
  }
	
  public func getCurrentPrice(symbol: String) -> Observable<PriceChangeModel> {
    return manager.currentPrice
  }
	
}
