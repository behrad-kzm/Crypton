//
//  AllCoinsUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import RxSwift
import Domain

public final class AllCoinsUseCase<Repository>: Domain.AllCoinsUseCase where Repository: AbstractRepository, Repository.T == Symbol {
	private let network: AllCoinsNetwork
	private let repository: Repository
	init(network: AllCoinsNetwork, repository: Repository) {
		self.network = network
		self.repository = repository
	}
	
	public func getList(requestParameter: ExchangeInfoNetworkModel.Request) -> Observable<ExchangeInfoNetworkModel.Response> {
		let fetchPosts = cache.fetchObjects().asObservable()
		let stored = network.fetchPosts()
			.flatMap {
				return self.cache.save(objects: $0)
					.asObservable()
					.map(to: [Post].self)
					.concat(Observable.just($0))
		}
		
		return fetchPosts.concat(stored)
		return network.getlist(requestParameter: requestParameter)
	}
}
