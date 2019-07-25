//
//  PositionManagerControlInfo.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/25/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct PositionManagerControlInfo {
	public private(set) var startedBTCValue: Double
	public private(set) var startedUSDValue: Double
	public var currentWalletBTC: Double
	public var currentWalletUSD: Double
	public init(startBTC: Double, startUSD: Double){
		self.startedUSDValue = startUSD
		self.currentWalletUSD = startUSD
		self.startedBTCValue = startBTC
		self.currentWalletBTC = startBTC
	}
	public var btcChange: Double {
		return currentWalletBTC - startedBTCValue
	}
	
	public var usdChange: Double = 0
	
	public var btcProfitPcnt: Double {
		return btcChange / startedBTCValue
	}
	public private(set) var usdProfitPcnt: Double = 0
	
	public mutating func updateForCurrentBTCPrice(price: Double) {
		currentWalletUSD = currentWalletBTC * price
		usdChange = currentWalletUSD - startedUSDValue
		usdProfitPcnt = usdChange / startedUSDValue
	}
}
