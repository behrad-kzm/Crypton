//
//  CloseOrder.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/25/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation

public struct CloseOrderModel: CommonOrderProtocol {
	public var type: OrderSide
	
	public var quantity: Int
	
	public var symbol: String
	
	public var targetPrice: Double
	
	public var orderID: String
	
	public func asNetwork() -> OrderRequestModel {
		return OrderRequestModel()
	}
}
