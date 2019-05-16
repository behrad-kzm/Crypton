//
//  AllCoinsUseCase.swift
//  Domain
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import RxSwift

public protocol AllCoinsUseCase {
	func getList(requestParameter: ExchangeInfoNetworkModel.Request) -> Observable<ExchangeInfoNetworkModel.Response>
}

