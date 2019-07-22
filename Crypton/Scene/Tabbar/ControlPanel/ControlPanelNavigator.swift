//
//  ControlPanelNavigator.swift
//  Crypton
//
//  Created by Behrad Kazemi on 7/22/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain

class ControlPanelNavigator {
	
	private let navigationController: UINavigationController
	private let services: Domain.UseCaseProvider
	
	init(services: Domain.UseCaseProvider, navigationController: UINavigationController) {
		self.navigationController = navigationController
		self.services = services
	}
}
