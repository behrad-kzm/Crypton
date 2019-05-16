//
//  AllCoinsViewModel.swift
//  Crypton
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxCocoa
import RxSwift
final class AllCoinsViewModel: ViewModelType {
	
	private let navigator: AllCoinsNavigator
	private let useCase: Domain.AllCoinsUseCase
	
	init( navigator: AllCoinsNavigator, useCase: Domain.AllCoinsUseCase) {
		self.useCase = useCase
		self.navigator = navigator
	}
	
	func transform(input: Input) -> Output {
		let activityIndicator = ActivityIndicator()
		let errorTracker = ErrorTracker()
		let response = useCase.getList(requestParameter: ExchangeInfoNetworkModel.Request()).trackActivity(activityIndicator).trackError(errorTracker).map { (response) -> [CoinPreviewCellVM] in
			return response.symbols.enumerated().compactMap({ (index, item) -> CoinPreviewCellVM in
				return CoinPreviewCellVM(model: item, cellIndex: index)
			})
		}.asDriverOnErrorJustComplete()
		let fetching = activityIndicator.asDriver()
		let errors = errorTracker.asDriver()
		return Output(symbols: response, error: errors , isFetching: fetching)
	}
	
}

extension AllCoinsViewModel {
	struct Input {
	}
	
	struct Output {
		let symbols: Driver<[CoinPreviewCellVM]>
		let error: Driver<Error>
		let isFetching: Driver<Bool>
		
	}
	
}
