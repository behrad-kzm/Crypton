//
//  StartPositionViewModel.swift
//  Crypton
//
//  Created by Salar Soleimani on 7/22/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxSwift
import RxCocoa

final class StartPositionViewModel: ViewModelType {
  
  public let marketUseCase: MarketUseCase
  private let navigator: StartPositionNavigator
  
  init(navigator: StartPositionNavigator, marketUseCase: MarketUseCase) {
    self.marketUseCase = marketUseCase
    self.navigator = navigator
  }
  
  func transform(input: Input) -> Output {
    // UI Transforms
    let showHeader = input.scrollViewOffset.map {$0.y > 32 ? true : false}
    let lossMarginValueString = input.lossMarginValue.map{ "\(Int($0 * 100))%" }.asDriver(onErrorJustReturn: "")
    let leverageValueString = input.leverageValue.map{ "\(Int($0 * 100))x" }.asDriver(onErrorJustReturn: "")

    // Network Transforms
    let currentChange = marketUseCase.getCurrentPrice(symbol: "xbt").asDriverOnErrorJustComplete()
    
    // Last Output
    return Output(showScrollViewHeader: showHeader, lossMarginValueString: lossMarginValueString, leverageValueString: leverageValueString, currentPrice: currentChange)
  }
  
}
extension StartPositionViewModel {
  struct Input {
    let scrollViewOffset: Driver<CGPoint>
    let placeOrderButton: Driver<Void>
    let autoReverse: Driver<Bool>
    let autoUpdate: Driver<Bool>
    let lossMarginValue: ControlProperty<Float>
    let leverageValue: ControlProperty<Float>
  }
  
  struct Output {
    let showScrollViewHeader: Driver<Bool>
    let lossMarginValueString: Driver<String>
    let leverageValueString: Driver<String>
    public let currentPrice: Driver<PriceChangeModel>
  }
}
