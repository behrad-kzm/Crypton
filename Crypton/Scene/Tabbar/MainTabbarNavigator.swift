//
//  MainTabbarNavigator.swift
//
//  Created by Behrad Kazemi on 1/26/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain

class MainTabbarNavigator {
  
  private let navigationController: UINavigationController
  private let tabbarVC: UITabBarController
  private let services: Domain.UseCaseProvider
  
  init(services: Domain.UseCaseProvider, navigationController: UINavigationController, tabbar: UITabBarController) {
    self.navigationController = navigationController
    self.tabbarVC = tabbar
    self.services = services
  }
  
  func setup(withIndex index: Int = 0) {
    //Setting up landing quiz
    let startPostionVC = StartPositionController(nibName: "StartPositionController", bundle: nil)
    let startPostionNavigator = StartPositionNavigator(services: services, navigationController: navigationController)
    startPostionVC.viewModel = StartPositionViewModel(navigator: startPostionNavigator, useCase: nil)
		
		let ControlPanelVC = ControlPanelViewController(nibName: "ControlPanelViewController", bundle: nil)
		let controlPanelNavigator = ControlPanelNavigator(services: services, navigationController: navigationController)
    ControlPanelVC.viewModel = ControlPanelViewModel(useCase: nil, navigator: controlPanelNavigator)
    tabbarVC.viewControllers = [startPostionVC, ControlPanelVC]
		tabbarVC.selectedIndex = index
    navigationController.pushViewController(tabbarVC, animated: true)
  }
  
  func toIndex(index: Int){
    tabbarVC.selectedIndex = index
  }
}
