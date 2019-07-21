//
//  ControlPanelViewController.swift
//  Crypton
//
//  Created by Behrad Kazemi on 7/21/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit
import RxSwift
class ControlPanelViewController: UIViewController {
	
	@IBOutlet weak var authButton: UIButton!
	var viewModel: ControlPanelViewModel!
  let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
      viewModel.doit().subscribe(onNext: { () in
        print("fuck")
      }, onError: { (error) in
        print(error)
      }).disposed(by: disposeBag)

    }

}
