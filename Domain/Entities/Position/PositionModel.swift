//
//  PositionModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct PositionModel: Codable {
	public let symbol: String
	public let quantity: Double
	public let profitPercent: Double
	public let liquidationPrice: Double
	public let entryPointPrice: Double
	public let leverage: Double

}
