//
//  StartPositionController.swift
//  Crypton
//
//  Created by Salar Soleimani on 7/22/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import SkyFloatingLabelTextField

class StartPositionController: UIViewController {
  //Title
  @IBOutlet weak var symbolLabel: UILabel!
  
  //CurrentPrice
  @IBOutlet weak var arrowDownImage: UIImageView!
  @IBOutlet weak var arrowUpImage: UIImageView!
  @IBOutlet weak var currentPrice: UILabel!
  @IBOutlet weak var scrollCurrentLabel: UILabel!
  @IBOutlet weak var headerBlur: UIVisualEffectView!
  
  @IBOutlet weak var currentPriceDollarSignLabel: UILabel!
  
  @IBOutlet weak var quantityTextField: SkyFloatingLabelTextField!
  @IBOutlet weak var triggerPriceTextField: SkyFloatingLabelTextField!
  
  @IBOutlet weak var lossMarginTitleLabel: UILabel!
  @IBOutlet weak var lossMarginValueLabel: UILabel!
  @IBOutlet weak var lossMarginSlider: UISlider!

  @IBOutlet weak var leverageTitleLabel: UILabel!
  @IBOutlet weak var leverageValueLabel: UILabel!
  @IBOutlet weak var leverageSlider: UISlider!
  
  @IBOutlet weak var longButton: UIButton!
  @IBOutlet weak var shortButton: UIButton!

  
  @IBOutlet weak var autoUpdateTitleLabel: UILabel!
  @IBOutlet weak var autoUpdateSwitch: UISwitch!
  
  @IBOutlet weak var autoReverseTitleLabel: UILabel!
  @IBOutlet weak var autoReverseSwitch: UISwitch!
  
  @IBOutlet weak var placeOrderButton: UIButton!

  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var placeOrderButtonContainer: UIView!
  var x: String?
  var viewModel: StartPositionViewModel!
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
    bindData()
  }
  func setupUI(){
    view.backgroundColor = Appearance.colors.darkBackground()
    [autoUpdateSwitch, autoReverseSwitch].forEach{
      $0?.onTintColor = Appearance.colors.purple()
    }
    scrollCurrentLabel.alpha =  0
    headerBlur.effect = nil
    scrollView.contentInset = view.safeAreaInsets
    symbolLabel.font = Appearance.hub.fonts.symbol()
    symbolLabel.textColor = Appearance.colors.white()
    scrollCurrentLabel.font = Appearance.hub.fonts.button()
    
    currentPrice.font = Appearance.hub.fonts.bigCurrentPrice()
    currentPriceDollarSignLabel.font = Appearance.hub.fonts.bigMedium()
    
    [longButton, shortButton].forEach {
      $0?.setTitleColor(Appearance.colors.white(), for: .normal)
      $0?.layer.cornerRadius = Appearance.cornerRadius.buttonCornerRadius()
    }
    shortButton.alpha = 0.5
    placeOrderButtonContainer.backgroundColor = Appearance.colors.green()
    placeOrderButton.titleLabel?.font = Appearance.hub.fonts.button()
    [leverageValueLabel, lossMarginValueLabel].forEach {
      $0?.font = Appearance.hub.fonts.regular()
      $0?.textColor = Appearance.colors.white()
    }
    [leverageTitleLabel, autoUpdateTitleLabel, autoReverseTitleLabel].forEach {
      $0?.font = Appearance.hub.fonts.regular()
      $0?.textColor = Appearance.colors.white()
    }
    
  }
  private func bindData() {
    let input = StartPositionViewModel.Input(scrollViewOffset: scrollView.rx.contentOffset.asDriver(), placeOrderButton: placeOrderButton.rx.tap.asDriver(), autoReverse: autoReverseSwitch.rx.isOn.asDriver(), autoUpdate: autoUpdateSwitch.rx.isOn.asDriver(), lossMarginValue: lossMarginSlider.rx.value, leverageValue: leverageSlider.rx.value)
    let output = viewModel.transform(input: input)
    
    bindTexts(with: output)
    bindTopBlurHeader(with: output)
    bindCurrentPrice(with: output)
  }
  private func bindCurrentPrice(with output: StartPositionViewModel.Output) {
    output.currentPrice.drive(onNext: { (change) in
      self.currentPrice.text = change.price
      self.currentPrice.textColor = change.changeType.getColor()
      self.scrollCurrentLabel.text = change.price
      self.scrollCurrentLabel.textColor = change.changeType.getColor()
      self.currentPriceDollarSignLabel.textColor = change.changeType.getColor()
      self.arrowDownImage.alpha = (change.changeType != .bearish) ? 0 : 1
      self.arrowUpImage.alpha = (change.changeType == .bearish) ? 0 : 1
    }).disposed(by: disposeBag)
  }
  private func bindTexts(with output: StartPositionViewModel.Output) {
    output.lossMarginValueString.drive(lossMarginValueLabel.rx.text).disposed(by: disposeBag)
    output.leverageValueString.drive(leverageValueLabel.rx.text).disposed(by: disposeBag)
  }
  private func bindTopBlurHeader(with output: StartPositionViewModel.Output) {
    output.showScrollViewHeader.drive(onNext: { [weak self] (show) in
      UIView.animate(withDuration: 0.2, animations: {
        self?.headerBlur.effect = show ? UIBlurEffect(style: .dark) : nil
        self?.scrollCurrentLabel.alpha = show ? 1 : 0
      })
    }).disposed(by: disposeBag)
  }
  @IBAction private func longAndShortButtonPressed(_ sender: UIButton) {
    if sender == longButton {
      shortButton.alpha = 0.5
    }
  }
}
