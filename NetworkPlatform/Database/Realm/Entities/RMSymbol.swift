//
//  RMSymbol.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 5/17/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import QueryKit
import Domain
import RealmSwift
import Realm

final class RMSymbol: Object {

	dynamic var symbol: String
	dynamic var status: String
	dynamic var baseAsset: String
	dynamic var baseAssetPrecision: Int
	dynamic var quoteAsset: String
	dynamic var quotePrecision: Int
	dynamic var icebergAllowed: Bool
	
	override class func primaryKey() -> String? {
		return "symbol"
	}
}
extension RMSymbol {
	static var symbol: Attribute<String> { return Attribute("symbol")}
	static var status: Attribute<String> { return Attribute("status")}
	static var baseAsset: Attribute<String> { return Attribute("baseAsset")}
	static var baseAssetPrecision: Attribute<Int> { return Attribute("baseAssetPrecision")}
	static var quoteAsset: Attribute<String> { return Attribute("quoteAsset")}
	static var quotePrecision: Attribute<Int> { return Attribute("quotePrecision")}
	static var icebergAllowed: Attribute<Bool> { return Attribute("icebergAllowed")}
}

extension RMSymbol: DomainConvertibleType {
	func asDomain() -> Symbol {
		return Symbol
	}
}

extension Symbol: RealmRepresentable {
	
	func asRealm() -> RMSymbol {
		return RMSymbol.build { object in
			object.symbol = symbol
			object.status = status
			object.baseAsset = baseAsset
			object.baseAssetPrecision = baseAssetPrecision
			object.quoteAsset = quoteAsset
			object.quotePrecision = quotePrecision
			object.icebergAllowed = icebergAllowed
		}
	}
}
