//
//  ChangingType.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/22/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public enum ChangingType {
	case bullish
	case bearish
	case stable
}
extension ChangingType {
	public static func representType(double: Double) -> ChangingType {
		if double > 0 {
			return .bullish
		}else if double < 0 {
			return bearish
		}
		return stable
	}
}
