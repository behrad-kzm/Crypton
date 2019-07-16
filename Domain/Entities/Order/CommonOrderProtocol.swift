//
//  CommonOrderProtocol.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public protocol CommonOrderProtocol {
	var type: OrderType { get }
	var quantity: Int { get }
	var symbol: String { get }
	var targetPrice: Double { get }
	//TODO - OrderID
}
