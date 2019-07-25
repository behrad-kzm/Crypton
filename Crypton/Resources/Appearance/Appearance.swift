//
//  Appearance.swift

//
//  Created by Behrad Kazemi on 11/21/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import UIKit
import Foundation

enum Appearance {
	enum hub {		
		enum fonts {
			static let symbol = { return UIFont.boldSystemFont(ofSize: 21) }
			static let regular = { return UIFont.systemFont(ofSize: 21) }
			static let bigMedium = { return UIFont.systemFont(ofSize: 45, weight: .medium) }
			static let bigProfitPercent = { return UIFont.systemFont(ofSize: 100, weight: .light) }
			static let button = { return UIFont.systemFont(ofSize: 18, weight: .black) }
			static let bigCurrentPrice = { return UIFont.systemFont(ofSize: 64, weight: .black) }
			static let sectionTitle = { return UIFont.systemFont(ofSize: 25, weight: .medium) }
		}

	}
	
	enum colors {
		
		static let green = { return UIColor(hex: "#6DD400", alpha: 1)}
		static let red = { return UIColor(hex: "#FF2D55", alpha: 1)}
		static let yellow = { return UIColor(hex: "#F7B500", alpha: 1)}
		static let purple = { return UIColor(hex: "#B620E0", alpha: 1)}
		static let darkBackground = { return UIColor(hex: "#0D0D21", alpha: 1)}
		static let white = { return UIColor(white: 0.9, alpha: 1)}
		
	}
  
  enum cornerRadius {
    static let buttonCornerRadius = { return CGFloat.init(10) }
  }
}
