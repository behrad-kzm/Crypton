//
//  AllCoinsNetwork.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxSwift

public final class AllCoinsNetwork {
	
	private let network: Network<ExchangeInfoNetworkModel.Response>
	
	init(network: Network<ExchangeInfoNetworkModel.Response>) {
		self.network = network
	}
	
	public func getlist(requestParameter: ExchangeInfoNetworkModel.Request) -> Observable<ExchangeInfoNetworkModel.Response> {
		return network.getItem(Constants.EndPoints.exchangeInfo.rawValue)
	}
}
