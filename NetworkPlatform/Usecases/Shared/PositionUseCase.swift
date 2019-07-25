//
//  PositionUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 7/25/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxSwift

public struct PositionUseCase: Domain.PositionUsecases {
	private let network: PositionNetwork
	private let orderUseCase: Domain.OrderUsecase
	init(network: PositionNetwork, orderUseCase: Domain.OrderUsecase) {
		self.network = network
		self.orderUseCase = orderUseCase
	}
	
	public func getPosition(symbol: String) -> Observable<PositionModel> {
		return network.getInfo().filter{$0.count > 0}.map({ (items) -> PositionModel in
			return items.first!.asDomain()
		})
	}
	
	public func close(position: PositionModel) -> Observable<Void> {
//		let closeOrder = CloseOrder
//		orderUseCase.place(order: )
	}
	
	public func update(leverage: Double) -> Observable<Void> {
		
	}
}
