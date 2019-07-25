//
//  OrderUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 7/25/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxSwift

public struct OrderUseCase: Domain.OrderUsecase {
	
	init() {
		
	}
	public func remove(order: CommonOrderProtocol) -> Observable<Void> {
		return Observable.just(())
	}
	
	public func getOrder(symbol: String) -> Observable<OrderResponseModel> {
		return Observable.just(OrderResponseModel(orderID: "d", clOrdID: nil, clOrdLinkID: nil, account: nil, symbol: nil, side: nil, simpleOrderQty: nil, orderQty: nil, price: nil, displayQty: nil, stopPx: nil, pegOffsetValue: nil, pegPriceType: nil, currency: nil, settlCurrency: nil, ordType: nil, timeInForce: nil, execInst: nil, contingencyType: nil, exDestination: nil, ordStatus: nil, triggered: nil, workingIndicator: nil, ordRejReason: nil, simpleLeavesQty: nil, leavesQty: nil, simpleCumQty: nil, cumQty: nil, avgPx: nil, multiLegReportingType: nil, text: nil, transactTime: nil, timestamp: nil))
	}
	
	public func place(order: OrderRequestModel) -> Observable<Void> {
		return Observable.just(())
	}
	


}
