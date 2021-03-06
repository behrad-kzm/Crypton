//
// PositionNetworkModel.swift
//
//  Created by Behrad Kazemi on 7/20/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation



public enum PositionNetworkModel:InteractiveModelType {
	public struct Response: Codable {
		
		public var account: Double
		public var symbol: String
		public var currency: String
		public var underlying: String?
		public var quoteCurrency: String?
		public var commission: Double?
		public var initMarginReq: Double?
		public var maintMarginReq: Double?
		public var riskLimit: Double?
		public var leverage: Double?
		public var crossMargin: Bool?
		public var deleveragePercentile: Double?
		public var rebalancedPnl: Double?
		public var prevRealisedPnl: Double?
		public var prevUnrealisedPnl: Double?
		public var prevClosePrice: Double?
		public var openingTimestamp: Date?
		public var openingQty: Double?
		public var openingCost: Double?
		public var openingComm: Double?
		public var openOrderBuyQty: Double?
		public var openOrderBuyCost: Double?
		public var openOrderBuyPremium: Double?
		public var openOrderSellQty: Double?
		public var openOrderSellCost: Double?
		public var openOrderSellPremium: Double?
		public var execBuyQty: Double?
		public var execBuyCost: Double?
		public var execSellQty: Double?
		public var execSellCost: Double?
		public var execQty: Double?
		public var execCost: Double?
		public var execComm: Double?
		public var currentTimestamp: Date?
		public var currentQty: Double?
		public var currentCost: Double?
		public var currentComm: Double?
		public var realisedCost: Double?
		public var unrealisedCost: Double?
		public var grossOpenCost: Double?
		public var grossOpenPremium: Double?
		public var grossExecCost: Double?
		public var isOpen: Bool?
		public var markPrice: Double?
		public var markValue: Double?
		public var riskValue: Double?
		public var homeNotional: Double?
		public var foreignNotional: Double?
		public var posState: String?
		public var posCost: Double?
		public var posCost2: Double?
		public var posCross: Double?
		public var posInit: Double?
		public var posComm: Double?
		public var posLoss: Double?
		public var posMargin: Double?
		public var posMaint: Double?
		public var posAllowance: Double?
		public var taxableMargin: Double?
		public var initMargin: Double?
		public var maintMargin: Double?
		public var sessionMargin: Double?
		public var targetExcessMargin: Double?
		public var varMargin: Double?
		public var realisedGrossPnl: Double?
		public var realisedTax: Double?
		public var realisedPnl: Double?
		public var unrealisedGrossPnl: Double?
		public var longBankrupt: Double?
		public var shortBankrupt: Double?
		public var taxBase: Double?
		public var indicativeTaxRate: Double?
		public var indicativeTax: Double?
		public var unrealisedTax: Double?
		public var unrealisedPnl: Double?
		public var unrealisedPnlPcnt: Double?
		public var unrealisedRoePcnt: Double?
		public var simpleQty: Double?
		public var simpleCost: Double?
		public var simpleValue: Double?
		public var simplePnl: Double?
		public var simplePnlPcnt: Double?
		public var avgCostPrice: Double?
		public var avgEntryPrice: Double?
		public var breakEvenPrice: Double?
		public var marginCallPrice: Double?
		public var liquidationPrice: Double?
		public var bankruptPrice: Double?
		public var timestamp: Date?
		public var lastPrice: Double?
		public var lastValue: Double?
		
		public init(account: Double, symbol: String, currency: String, underlying: String?, quoteCurrency: String?, commission: Double?, initMarginReq: Double?, maintMarginReq: Double?, riskLimit: Double?, leverage: Double?, crossMargin: Bool?, deleveragePercentile: Double?, rebalancedPnl: Double?, prevRealisedPnl: Double?, prevUnrealisedPnl: Double?, prevClosePrice: Double?, openingTimestamp: Date?, openingQty: Double?, openingCost: Double?, openingComm: Double?, openOrderBuyQty: Double?, openOrderBuyCost: Double?, openOrderBuyPremium: Double?, openOrderSellQty: Double?, openOrderSellCost: Double?, openOrderSellPremium: Double?, execBuyQty: Double?, execBuyCost: Double?, execSellQty: Double?, execSellCost: Double?, execQty: Double?, execCost: Double?, execComm: Double?, currentTimestamp: Date?, currentQty: Double?, currentCost: Double?, currentComm: Double?, realisedCost: Double?, unrealisedCost: Double?, grossOpenCost: Double?, grossOpenPremium: Double?, grossExecCost: Double?, isOpen: Bool?, markPrice: Double?, markValue: Double?, riskValue: Double?, homeNotional: Double?, foreignNotional: Double?, posState: String?, posCost: Double?, posCost2: Double?, posCross: Double?, posInit: Double?, posComm: Double?, posLoss: Double?, posMargin: Double?, posMaint: Double?, posAllowance: Double?, taxableMargin: Double?, initMargin: Double?, maintMargin: Double?, sessionMargin: Double?, targetExcessMargin: Double?, varMargin: Double?, realisedGrossPnl: Double?, realisedTax: Double?, realisedPnl: Double?, unrealisedGrossPnl: Double?, longBankrupt: Double?, shortBankrupt: Double?, taxBase: Double?, indicativeTaxRate: Double?, indicativeTax: Double?, unrealisedTax: Double?, unrealisedPnl: Double?, unrealisedPnlPcnt: Double?, unrealisedRoePcnt: Double?, simpleQty: Double?, simpleCost: Double?, simpleValue: Double?, simplePnl: Double?, simplePnlPcnt: Double?, avgCostPrice: Double?, avgEntryPrice: Double?, breakEvenPrice: Double?, marginCallPrice: Double?, liquidationPrice: Double?, bankruptPrice: Double?, timestamp: Date?, lastPrice: Double?, lastValue: Double?) {
			self.account = account
			self.symbol = symbol
			self.currency = currency
			self.underlying = underlying
			self.quoteCurrency = quoteCurrency
			self.commission = commission
			self.initMarginReq = initMarginReq
			self.maintMarginReq = maintMarginReq
			self.riskLimit = riskLimit
			self.leverage = leverage
			self.crossMargin = crossMargin
			self.deleveragePercentile = deleveragePercentile
			self.rebalancedPnl = rebalancedPnl
			self.prevRealisedPnl = prevRealisedPnl
			self.prevUnrealisedPnl = prevUnrealisedPnl
			self.prevClosePrice = prevClosePrice
			self.openingTimestamp = openingTimestamp
			self.openingQty = openingQty
			self.openingCost = openingCost
			self.openingComm = openingComm
			self.openOrderBuyQty = openOrderBuyQty
			self.openOrderBuyCost = openOrderBuyCost
			self.openOrderBuyPremium = openOrderBuyPremium
			self.openOrderSellQty = openOrderSellQty
			self.openOrderSellCost = openOrderSellCost
			self.openOrderSellPremium = openOrderSellPremium
			self.execBuyQty = execBuyQty
			self.execBuyCost = execBuyCost
			self.execSellQty = execSellQty
			self.execSellCost = execSellCost
			self.execQty = execQty
			self.execCost = execCost
			self.execComm = execComm
			self.currentTimestamp = currentTimestamp
			self.currentQty = currentQty
			self.currentCost = currentCost
			self.currentComm = currentComm
			self.realisedCost = realisedCost
			self.unrealisedCost = unrealisedCost
			self.grossOpenCost = grossOpenCost
			self.grossOpenPremium = grossOpenPremium
			self.grossExecCost = grossExecCost
			self.isOpen = isOpen
			self.markPrice = markPrice
			self.markValue = markValue
			self.riskValue = riskValue
			self.homeNotional = homeNotional
			self.foreignNotional = foreignNotional
			self.posState = posState
			self.posCost = posCost
			self.posCost2 = posCost2
			self.posCross = posCross
			self.posInit = posInit
			self.posComm = posComm
			self.posLoss = posLoss
			self.posMargin = posMargin
			self.posMaint = posMaint
			self.posAllowance = posAllowance
			self.taxableMargin = taxableMargin
			self.initMargin = initMargin
			self.maintMargin = maintMargin
			self.sessionMargin = sessionMargin
			self.targetExcessMargin = targetExcessMargin
			self.varMargin = varMargin
			self.realisedGrossPnl = realisedGrossPnl
			self.realisedTax = realisedTax
			self.realisedPnl = realisedPnl
			self.unrealisedGrossPnl = unrealisedGrossPnl
			self.longBankrupt = longBankrupt
			self.shortBankrupt = shortBankrupt
			self.taxBase = taxBase
			self.indicativeTaxRate = indicativeTaxRate
			self.indicativeTax = indicativeTax
			self.unrealisedTax = unrealisedTax
			self.unrealisedPnl = unrealisedPnl
			self.unrealisedPnlPcnt = unrealisedPnlPcnt
			self.unrealisedRoePcnt = unrealisedRoePcnt
			self.simpleQty = simpleQty
			self.simpleCost = simpleCost
			self.simpleValue = simpleValue
			self.simplePnl = simplePnl
			self.simplePnlPcnt = simplePnlPcnt
			self.avgCostPrice = avgCostPrice
			self.avgEntryPrice = avgEntryPrice
			self.breakEvenPrice = breakEvenPrice
			self.marginCallPrice = marginCallPrice
			self.liquidationPrice = liquidationPrice
			self.bankruptPrice = bankruptPrice
			self.timestamp = timestamp
			self.lastPrice = lastPrice
			self.lastValue = lastValue
		}
	}
	public struct Request: Codable {
		public let filter: String
		public let columns: String
		public let count: Double
	}
}
extension PositionModel {
	public func asNetworkRequestModel() -> PositionNetworkModel.Request{
		return PositionNetworkModel.Request(filter:  "{\"symbol\": \(symbol)}", columns: "", count: 1)
	}
}
	extension PositionNetworkModel.Response {
		public func asDomain() -> PositionModel {
			let side = (self.liquidationPrice! > self.avgEntryPrice!) ? OrderSide.short : OrderSide.long
			return PositionModel(symbol: self.symbol, quantity: self.currentQty ?? 0, profitPercent: self.unrealisedPnlPcnt ?? 0, liquid: self.liquidationPrice ?? 0, entry: self.avgEntryPrice ?? 0, leverage: self.leverage ?? 1, side: side )
		}
}
