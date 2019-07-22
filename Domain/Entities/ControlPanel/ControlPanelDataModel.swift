//
//  ControlPanelDataModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/23/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct ControlPanelDataModel {
	public let currentProfit: PriceChangeModel
	public let side: OrderSide
	public let quantity: String
	public let totalProfit: PriceChangeModel
	public let changeBTC: PriceChangeModel
	public let changeUSD: PriceChangeModel
	public let currentBTC: Double
	public let currentUSD: Double
	public let stopLossTrigger: Double
	public let leverage: Double
	public let isAutoReverse: Bool
	public let isAutoUpdate: Bool
	public let symbol: String
	
	public init(currentProfit: PriceChangeModel, side: OrderSide, quantity: String, totalProfit: PriceChangeModel, changeBTC: PriceChangeModel, changeUSD: PriceChangeModel, currentBTC: Double, currentUSD: Double, stopLossTrigger: Double, leverage: Double, isAutoReverse: Bool, isAutoUpdate: Bool, symbol: String){
		self.currentProfit = currentProfit
		self.side = side
		self.quantity = quantity
		self.totalProfit = totalProfit
		self.changeBTC = changeBTC
		self.changeUSD = changeUSD
		self.currentBTC = currentBTC
		self.currentUSD = currentUSD
		self.stopLossTrigger = stopLossTrigger
		self.leverage = leverage
		self.isAutoReverse = isAutoReverse
		self.isAutoUpdate = isAutoUpdate
		self.symbol = symbol
	}
}
