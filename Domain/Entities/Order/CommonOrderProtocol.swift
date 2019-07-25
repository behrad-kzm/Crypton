//
//  CommonOrderProtocol.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public protocol CommonOrderProtocol {
	var type: OrderSide { get }
	var quantity: Int { get }
	var symbol: String { get }
	var targetPrice: Double { get }
	var orderID: String { get }
	
	func asNetwork() -> OrderRequestModel
	//TODO - OrderID
}
