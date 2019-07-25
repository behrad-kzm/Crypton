//
//  PositionNetwork.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 7/24/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Domain
import RxSwift

public final class PositionNetwork {
	
	private let network: Network<PositionNetworkModel.Response>
	
	init(network: Network<PositionNetworkModel.Response>) {
		self.network = network
	}
	
	public func getInfo() -> Observable<[PositionNetworkModel.Response]> {
		let res = network.getItems(Constants.EndPoints.position.rawValue)
		
		return res
	}
	
}
