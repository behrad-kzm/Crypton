//
//  CoinPreviewCellVM.swift
//  Crypton
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
struct CoinPreviewCellVM {
	let name: String
	let dayChangePercent: String
	let index: String
	let changingColor: UIColor
	init(model: Symbol, cellIndex: Int) {
		name = model.symbol
		dayChangePercent = "--"
		index = "\(cellIndex)."
		changingColor = .green
	}
}
