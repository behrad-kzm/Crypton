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
  
  public let usecase: OrderUsecase?
  private let navigator: StartPositionNavigator
  
  init(navigator: StartPositionNavigator, useCase: OrderUsecase?) {
    self.usecase = useCase
    self.navigator = navigator
  }
  
  func transform(input: Input) -> Output {
    let showHeader = input.scrollViewOffset.map {$0.y > 32 ? true : false}
    let lossMarginValueString = input.lossMarginValue.map{ "\(Int($0 * 100))%" }.asDriver(onErrorJustReturn: "")
    let leverageValueString = input.leverageValue.map{ "\(Int($0 * 100))x" }.asDriver(onErrorJustReturn: "")

    return Output(showScrollViewHeader: showHeader, lossMarginValueString: lossMarginValueString, leverageValueString: leverageValueString)
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
  }
}
