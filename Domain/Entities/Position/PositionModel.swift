//
//  PositionModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct PositionModel: Codable {
	public let symbol: String
	public let quantity: Double
	public let profitPercent: Double
	public let liquidationPrice: Double
	public let entryPointPrice: Double
	public let leverage: Double
	public let side: OrderSide
	public init(symbol: String, quantity: Double, profitPercent: Double, liquid: Double, entry: Double, leverage: Double, side: OrderSide){
		self.symbol = symbol
		self.quantity = quantity
		self.profitPercent = profitPercent
		self.liquidationPrice = liquid
		self.entryPointPrice = entry
		self.leverage = leverage
		self.side = side
	}
}
