//
//  StopMarketOrder.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct StopMarketOrder: CommonOrderProtocol {
	public var type: OrderType
	
	public var quantity: Int
	
	public let targetPrice: Double

}
