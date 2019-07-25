//
//  SplashScreenController.swift
//  BarandehShow
//
//  Created by Behrad Kazemi on 12/27/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import UIKit
import NetworkPlatform
class SplashScreenController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var centerLogoImageView: UIImageView!
    @IBOutlet weak var logoWidthConstraint: NSLayoutConstraint!
  @IBOutlet weak var retryButton: UIButton!
  var viewModel: SplashViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        assert(viewModel != nil)

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if #available(iOS 10.0, *) {
          viewModel.popLoginIfNeededOrContinue(handler: {[unowned self] in
            DispatchQueue.main.async {
              self.retryButton.isHidden = false
            }
          })
        } else {
            // Fallback on earlier versions
        }
        
    }
  @IBAction func retryAction(_ sender: Any) {
    retryButton.isHidden = true
    viewModel.popLoginIfNeededOrContinue(handler: {[unowned self] in
      DispatchQueue.main.async {
        self.retryButton.isHidden = false
      }
    })
  }
  private func animation(completion: @escaping () -> ()){
        Vibrator.vibrate(hardness: 4)
    }
}

