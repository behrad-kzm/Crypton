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
	var controlInfoObs: BehaviorSubject<PositionManagerControlInfo> { get }
	var currentPrice: Observable<PriceChangeModel> { get }
	var currentObs: BehaviorSubject<PositionModel?> { get }
	var acceptableLossPercent: Double { get }
	var stopLossUpdatingStrategy: StopLossUpdateStrategy { get }
	var positionUpdatingStrategy: PositionUpdateStrategy { get }
	var status: PositionManagerStatus { get }
	var statusObs: BehaviorSubject<PositionManagerStatus> { get }
	var stopLossOrder: StopMarketOrder? { get }
	var stopLossOrderObs: BehaviorSubject<StopMarketOrder?>  { get }

	func closePositionMarket() -> Observable<Void>
	func closePosition(with: CommonOrderProtocol) -> Observable<Void>
	func startPosition(withOrder: StopLimitOrder, lossMargin: Double, positionStrategy: PositionUpdateStrategy, stopLossStrategy: StopLossUpdateStrategy) -> Observable<Void>
	func startPosition(withOrder: StopLimitOrder, lossMargin: Double, positionStrategy: PositionUpdateStrategy, profitPercent: Double) -> Observable<Void>
	
}
