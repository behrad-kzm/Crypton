//
//  PositionUsecases.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/16/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import RxSwift

public protocol PositionUsecases {
	func getPosition(symbol: String) -> Observable<PositionModel>
	func close(position: PositionModel) -> Observable<Void>
	func update(leverage: Double) -> Observable<Void>
	
}
