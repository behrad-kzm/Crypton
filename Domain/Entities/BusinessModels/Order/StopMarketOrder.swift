//
//  StopMarketOrder.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct StopMarketOrder: CommonOrderProtocol {
	public func asNetwork() -> OrderRequestModel {
		return OrderRequestModel()
	}
	
	
	public let symbol: String
	
	public var type: OrderSide
	
	public var quantity: Int
	
	public let targetPrice: Double

	public let orderID: String
}

