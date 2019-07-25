//
// GetOrderNetworkModel.swift
//
//  Created by Behrad Kazemi on 7/20/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation

public enum GetOrderNetworkModel: InteractiveModelType {
	
	typealias Response = OrderResponseModel
	
	public struct Request: Codable {
		public let symbol: String
		public let side: String
		public let orderQty: Double
		public let price: Double
		public let ordType: BitmexOrderType
	}
}

