//
//  CoinPreviewCell.swift
//  Crypton
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit

class CoinPreviewCell: UITableViewCell {

	@IBOutlet weak var indexLabel: UILabel!
	@IBOutlet weak var symbolLabel: UILabel!
	@IBOutlet weak var percentChanged: UILabel!
	@IBOutlet weak var changeContainerView: UIView!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

	func setupViewModel(vm: CoinPreviewCellVM) {
		indexLabel.text = vm.index
		symbolLabel.text = vm.name
		percentChanged.text = vm.dayChangePercent
		changeContainerView.backgroundColor = vm.changingColor
	}
}
