//
//  ControlPanelUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 7/23/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxSwift
import RxCocoa

public struct ControlPanelUseCase: Domain.ControlPanelUseCase {

	private let manager: Domain.PositionManager
	public init (manager: Domain.PositionManager) {
		self.manager = manager
	}
	public func currentPrice() -> Observable<PriceChangeModel> {
		return manager.currentPrice
	}
	
//	public func panelData() -> Observable<ControlPanelDataModel> {
//		return nil
////		return Observable.just(ControlPanelDataModel(currentProfit: <#T##PriceChangeModel#>, side: <#T##OrderSide#>, quantity: <#T##String#>, totalProfit: <#T##PriceChangeModel#>, changeBTC: <#T##PriceChangeModel#>, changeUSD: <#T##PriceChangeModel#>, currentBTC: <#T##Double#>, currentUSD: <#T##Double#>, stopLossTrigger: <#T##Double#>, leverage: <#T##Double#>, isAutoReverse: <#T##Bool#>, isAutoUpdate: <#T##Bool#>, symbol: <#T##String#>))
//	}
	
	
}
