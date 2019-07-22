//
//  UIViewControllerExtension.swift
//  Crypton
//
//  Created by Salar Soleimani on 7/22/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit

extension UIViewController {
  func loadFromNib<T: UIViewController>() -> T {
    let selfType = type(of: self)
    let nibName = String(describing: selfType)
    let nib = UINib(nibName: nibName, bundle: nil)
    
    guard let view = nib.instantiate(withOwner: self, options: nil).first as? T else {
      fatalError("Error loading nib with name \(nibName)")
    }
    return view
  }
}
