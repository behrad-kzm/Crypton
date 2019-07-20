//
//  BitmexCalculator.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/20/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//
import RxSwift
import Foundation
public protocol BitmexCalculator {
	func liquidation(entry: Double, orderType: OrderSide) -> Observable<Double>
}
