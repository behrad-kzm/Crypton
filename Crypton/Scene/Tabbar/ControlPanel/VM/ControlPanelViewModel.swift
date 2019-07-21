//
//  ControlPanelViewModel.swift
//  Crypton
//
//  Created by Behrad Kazemi on 7/21/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxSwift
final class ControlPanelViewModel {
	//TODO
	public let usecase: AuthorizationUseCase
  init(useCase: AuthorizationUseCase) {
    self.usecase = useCase
  }
  func doit() -> Observable<Void> {
    return usecase.login()
  }
}
