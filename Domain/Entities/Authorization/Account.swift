//
//  Account.swift
//  Domain
//
//  Created by Behrad Kazemi on 7/20/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import CommonCrypto
public struct AccountInfoModel {
	public let key = "HtDU-bQ8KtMKmcIKMe9RiFbK"
	public let secret = "ZoKUQBOyN6nRO5PKm6RohdtKmxt1pLuBROSAMVKfja5xWa7X"
	
	public init(){}
	
	public func getSignature(method: String, path: String, data: String, expires: TimeInterval) -> String { 
		let crypto = EasyCrypt(secret: secret, algorithm: .sha256)
		let stringData = method + path + String(expires) + data
		let signatureString = crypto.hash(stringData)
		let data = Data(signatureString.utf8)
		let signature = data.map{ String(format:"%02x", $0) }.joined()
		return signature
	}
}
