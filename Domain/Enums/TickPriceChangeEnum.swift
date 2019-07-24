//
//  TickPriceChangeEnum.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/24/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public enum TickPriceChangeEnum: String, Codable {
	case PlusTick
	case ZeroPlusTick
	case ZeroMinusTick
	case MinusTick
}
