//
//  InstrumentUpdateSymbol.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/22/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct InstrumentUpdateSymbol: Codable {	
	public let table: String
	public let action: String
	public let data: [Row]
}
extension InstrumentUpdateSymbol {

	public struct Row: Codable {
		public let symbol: String
		public let lastPrice: Double?
		public let lastTickDirection: TickPriceChangeEnum
		public let lastChangePcnt: Double?
		public let timestamp: String
	}
}
