//
//  PositionManager.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import RxSwift
public protocol PositionManager {
	var current: PositionModel? { get }
	var currentObs: Observable<PositionModel?> { get }
	var acceptableLossPercent: Double { get }
	var stopLossUpdatingStrategy: StopLossUpdateStrategy { get }
	var positionUpdatingStrategy: PositionUpdateStrategy { get }
	
	var stopLossOrder: StopMarketOrder { get }
	var stopLossOrderObs: Observable<StopMarketOrder>  { get }
	
	func closePosition() -> Observable<Void>
	func startPosition(withOrder: StopLimitOrder, lossMargin: Double, positionStrategy: PositionUpdateStrategy, stopLossStrategy: StopLossUpdateStrategy) -> Observable<Void>


}
