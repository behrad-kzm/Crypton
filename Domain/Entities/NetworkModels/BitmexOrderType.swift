//
//  BitmexOrderType.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/20/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public enum BitmexOrderType: String, Codable {
 case Market, Limit, Stop, StopLimit, MarketIfTouched, LimitIfTouched
}
