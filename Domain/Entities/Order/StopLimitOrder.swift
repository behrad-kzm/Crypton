//
//  StopLimitOrder.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct StopLimitOrder: CommonOrderProtocol {
	public var type: OrderType
	
	public var quantity: Int
	
	public let targetPrice: Double
	
	public let triggerPrice: Double
}
