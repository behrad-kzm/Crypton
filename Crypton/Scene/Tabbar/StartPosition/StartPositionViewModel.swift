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

final class StartPositionViewModel {
  
  public let navigator: StartPositionNavigator
  public let usecase: OrderUsecase
  
  init(navigator: StartPositionNavigator, useCase: OrderUsecase) {
    self.usecase = useCase
    self.navigator = navigator
  }
  
}
