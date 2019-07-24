//
//  MarketUseCase.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import RxSwift

public protocol MarketUseCase {
	func getCurrentPrice(symbol: String) -> Observable<PriceChangeModel>
}


