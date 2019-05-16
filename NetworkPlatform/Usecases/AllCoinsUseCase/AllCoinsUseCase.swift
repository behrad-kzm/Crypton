//
//  AllCoinsUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import RxSwift
import Domain

public final class AllCoinsUseCase: Domain.AllCoinsUseCase {
	
	private let network: AllCoinsNetwork
	
	init(network: AllCoinsNetwork) {
		self.network = network
	}
	
	public func getList(requestParameter: ExchangeInfoNetworkModel.Request) -> Observable<ExchangeInfoNetworkModel.Response> {
		return network.getlist(requestParameter: requestParameter)
	}
}
