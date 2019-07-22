//
//  StartPositionNavigator.swift
//  Crypton
//
//  Created by Salar Soleimani on 7/22/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain

class StartPositionNavigator {
  
  private let navigationController: UINavigationController
  private let services: Domain.UseCaseProvider
  
  init(services: Domain.UseCaseProvider, navigationController: UINavigationController) {
    self.navigationController = navigationController
    self.services = services
  }
}
