//
//  AllCoinsViewController.swift
//  Crypton
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit
import RxSwift
import RxDataSources
class AllCoinsViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	let disposeBag = DisposeBag()
	var viewModel: AllCoinsViewModel!
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
		bindData()
		
		// Do any additional setup after loading the view.
	}
	func setupUI() {
		tableView.register(UINib(nibName: "CoinPreviewCell", bundle: nil), forCellReuseIdentifier: CellIds.cellId.rawValue)
		tableView.rowHeight = 64
	}
	func bindData(){
		let input = AllCoinsViewModel.Input()
		let output = viewModel.transform(input: input)
		[output.error.drive(),output.symbols.drive(tableView.rx.items(cellIdentifier: CellIds.cellId.rawValue, cellType: CoinPreviewCell.self)){item,vm,cell in
			cell.setupViewModel(vm: vm)
			}].forEach { (item) in
				item.disposed(by: disposeBag)
		}
	}
}
