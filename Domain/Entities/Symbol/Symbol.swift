//
//  Symbol.swift
//  Domain
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct Symbol: Codable {

	public let symbol: String
	public let status: String
	public let baseAsset: String
	public let baseAssetPrecision: Int
	public let quoteAsset: String
	public let quotePrecision: Int
	public let icebergAllowed: Bool
}
