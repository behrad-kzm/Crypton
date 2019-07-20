//
//  AccountManager.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/20/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
public protocol AccountManager {
	var current: AccountInfoModel { get }
	func login
}
