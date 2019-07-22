//
//  ControlPanelViewController.swift
//  Crypton
//
//  Created by Behrad Kazemi on 7/21/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit
import Domain
import RxSwift
class ControlPanelViewController: UIViewController {
	
	//Title
	@IBOutlet weak var symbolLabel: UILabel!
	
	//CurrentPrice
	@IBOutlet weak var arrowDownImage: UIImageView!
	@IBOutlet weak var arrowUpImage: UIImageView!
	@IBOutlet weak var currentPrice: UILabel!
	@IBOutlet weak var currentPriceDollarSignLabel: UILabel!
	
	//CurrentProfit
	@IBOutlet weak var currentProfitTitleLabel: UILabel!
	@IBOutlet weak var currentProfitPercentLabel: UILabel!
	
	//Table
	@IBOutlet weak var sideTitleLabel: UILabel!
	@IBOutlet weak var sideLabel: UILabel!
	
	@IBOutlet weak var quantityTitleLabel: UILabel!
	@IBOutlet weak var quantityLabel: UILabel!
	
	@IBOutlet weak var totalProfitTitleLabel: UILabel!
	@IBOutlet weak var totalProfitLabel: UILabel!
	
	@IBOutlet weak var changeBTCTitleLabel: UILabel!
	@IBOutlet weak var changeBTCLabel: UILabel!
	
	@IBOutlet weak var changeUSDTitleLabel: UILabel!
	@IBOutlet weak var changeUSDLabel: UILabel!
	
	@IBOutlet weak var currentBTCTitleLabel: UILabel!
	@IBOutlet weak var currentBTCLabel: UILabel!
	
	@IBOutlet weak var currentUSDTitleLabel: UILabel!
	@IBOutlet weak var currentUSDLabel: UILabel!
	
	@IBOutlet weak var stopLossTitleLabel: UILabel!
	@IBOutlet weak var stopLossLabel: UILabel!
	
	@IBOutlet weak var leverageTitleLabel: UILabel!
	@IBOutlet weak var leverageLabel: UILabel!
	
	@IBOutlet weak var autoUpdateTitleLabel: UILabel!
	@IBOutlet weak var autoUpdateSwitch: UISwitch!
	
	@IBOutlet weak var autoReverseTitleLabel: UILabel!
	@IBOutlet weak var autoReverseSwitch: UISwitch!
	
	@IBOutlet weak var endPositionButton: UIButton!
	var viewModel: ControlPanelViewModel!
	let disposeBag = DisposeBag()
	
	@IBOutlet weak var scrollView: UIScrollView!
	@IBOutlet weak var endPositionContainer: UIView!
	override func viewDidLoad() {
		super.viewDidLoad()
		viewModel.doit().subscribe(onNext: { () in
			print("fuck")
		}, onError: { (error) in
			print(error)
		}).disposed(by: disposeBag)
		
	}
	
	func setupUI(){
	view.backgroundColor = Appearance.colors.darkBackground()
		[autoUpdateSwitch, autoReverseSwitch].forEach{
			$0?.backgroundColor = Appearance.colors.purple()
		}
		scrollView.contentInset = view.safeAreaInsets
		symbolLabel.font = Appearance.hub.fonts.symbol()
		currentPrice.font = Appearance.hub.fonts.bigCurrentPrice()
		currentPriceDollarSignLabel.font = Appearance.hub.fonts.bigMedium()
		currentProfitTitleLabel.font = Appearance.hub.fonts.sectionTitle()
		currentProfitPercentLabel.font = Appearance.hub.fonts.bigProfitPercent()
		endPositionContainer.backgroundColor = Appearance.colors.yellow()
		endPositionButton.titleLabel?.font = Appearance.hub.fonts.button()
		[sideLabel, quantityLabel, totalProfitLabel, changeBTCLabel, changeUSDLabel, currentBTCLabel, currentUSDLabel, stopLossLabel, leverageLabel].forEach{
			$0?.font = Appearance.hub.fonts.regular()
		}
			[stopLossTitleLabel, sideTitleLabel, leverageTitleLabel, quantityTitleLabel, changeBTCTitleLabel, changeUSDTitleLabel, autoUpdateTitleLabel, currentBTCTitleLabel, currentUSDTitleLabel,autoReverseTitleLabel].forEach{
			$0?.font = Appearance.hub.fonts.regular()
			$0?.textColor = Appearance.colors.white()
		}
		
	}
	
}
