//
//  OrderUsecase.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import RxSwift

public protocol OrderUsecase {
	func remove(order: CommonOrderProtocol) -> Observable<Void>
	func getOrder(symbol: String) -> Observable<StopMarketOrder?>
	func place(order: OrderRequestModel) -> Observable<Void>
}


