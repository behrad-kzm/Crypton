//
//  ControlPanelViewModel.swift
//  Crypton
//
//  Created by Behrad Kazemi on 7/21/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import RxCocoa
import RxSwift
final class ControlPanelViewModel: ViewModelType {

	public let usecase: ControlPanelUseCase?
	private let navigator: ControlPanelNavigator
	init(useCase: ControlPanelUseCase?, navigator: ControlPanelNavigator) {
    self.usecase = useCase
		self.navigator = navigator
  }
	
	func transform(input: Input) -> Output {
		let showHeader = input.scrollViewOffset.map {$0.y > 32 ? true : false}
		return Output(showScrollViewHeader: showHeader)
	}

}
extension ControlPanelViewModel {
	public struct Input {
		let scrollViewOffset: Driver<CGPoint>
		let endButton: Driver<Void>
		let autoReverse: Driver<Bool>
		let autoUpdate: Driver<Bool>
	}
	
	public struct Output {
		public let showScrollViewHeader: Driver<Bool>
	}
}
