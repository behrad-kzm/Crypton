//
//  ExchangeInfoNetworkModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public enum ExchangeInfoNetworkModel: InteractiveModelType {
	
	public struct Request: Codable {
		public init(){
			
		}
	}
	
	public struct Response: Codable {
		public let timezone: String
		public let serverTime: Int
		public let symbols: [Symbol]
	}
}
