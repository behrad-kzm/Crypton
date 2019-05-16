//
//  MainTabbarNavigator.swift
//
//  Created by Behrad Kazemi on 1/26/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import NetworkPlatform
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
    let allCoinsVM = AllCoinsViewModel(navigator: AllCoinsNavigator(services: services, navigationController: navigationController), useCase: services.makeAllCoinsUseCase())
    let allCoinsVC = AllCoinsViewController(nibName: "AllCoinsViewController", bundle: nil)
		allCoinsVC.viewModel = allCoinsVM
		
		tabbarVC.viewControllers = [allCoinsVC]
		tabbarVC.selectedIndex = index
    navigationController.pushViewController(tabbarVC, animated: true)
    
  }
  
  func toIndex(index: Int){
    tabbarVC.selectedIndex = index
  }
}
