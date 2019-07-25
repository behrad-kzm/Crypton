//
//  ControlPanelUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 7/23/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxSwift

public struct ControlPanelUseCase: Domain.ControlPanelUseCase {

	private let manager: Domain.PositionManager
	public init (manager: Domain.PositionManager) {
		self.manager = manager
	}
	
	public func currentPrice() -> Observable<PriceChangeModel> {
		return manager.currentPrice
	}
	
	public func panelData() -> Observable<ControlPanelDataModel> {
		let currentStopLoss = manager.stopLossOrderObs.asObservable().filter{$0 != nil}.map{$0!}
		let currentPositionInfo = manager.currentObs.asObservable().filter{$0 != nil}.map{$0!}
		let controlInfo = manager.controlInfoObs.asObservable().filter{$0.startedBTCValue > 0}
		return Observable.combineLatest(currentPositionInfo, controlInfo, currentStopLoss).map({ (position, info, stopLoss) -> ControlPanelDataModel in
			let totalProfit = PriceChangeModel(price: position.profitPercent, type: ChangingType.representType(double: position.profitPercent))
			let isAutoReverse = (self.manager.positionUpdatingStrategy == .autoRevert) ? true : false
			let isAutoUpdate = (self.manager.stopLossUpdatingStrategy == .autoUpdate) ? true : false
			let changeBTC = PriceChangeModel(price: info.btcChange, type: ChangingType.representType(double: info.btcChange))
			let changeUSD = PriceChangeModel(price: info.usdChange, type: ChangingType.representType(double: info.usdChange))
			return ControlPanelDataModel(currentProfit: PriceChangeModel(price: position.profitPercent, type: ChangingType.representType(double: position.profitPercent)), side: position.side, quantity: String(position.quantity), totalProfit: totalProfit, changeBTC: changeBTC, changeUSD: changeUSD, currentBTC: info.currentWalletBTC, currentUSD: info.currentWalletUSD, stopLossTrigger: stopLoss.targetPrice, leverage: position.leverage, isAutoReverse: isAutoReverse, isAutoUpdate: isAutoUpdate, symbol: position.symbol)
		})
	}
	
	
}
