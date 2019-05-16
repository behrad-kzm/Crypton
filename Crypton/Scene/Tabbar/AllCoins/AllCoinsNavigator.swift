//
//  AllCoinsNavigator.swift
//  Crypton
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain

class AllCoinsNavigator {
	
	private let navigationController: UINavigationController
	private let services: UseCaseProvider
	
	init(services: UseCaseProvider, navigationController: UINavigationController) {
		self.services = services
		self.navigationController = navigationController
	}
	
	func toDetails() {
		
	}
	
	func toErrorPage(message: String) {
		
	}
}
