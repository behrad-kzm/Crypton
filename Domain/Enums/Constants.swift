//
//  Constants.swift
//  Domain
//
//  Created by Behrad Kazemi on 12/26/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import CoreTelephony
import Reachability
public enum Constants {
	public enum Keys: String {
		//MARK: - Schedulers name
		case cacheSchedulerQueueName = "com.bekapps.Network.Cache.queue"
		
		//MARK: - Storage Keys
		public enum Authentication: String {
			case refreshToken = "com.bekapps.storagekeys.authentication.token.refresh"
			case accessToken = "com.bekapps.storagekeys.authentication.token.access"
			case UUID = "com.bekapps.storagekeys.authentication.info.uuid"
		}
		
	}
	
	public enum EndPoints: String {
		
		//Main
		case defaultBinanceBaseUrl = "https://api.binance.com/api/v1/"
		
		case exchangeInfo = "exchangeInfo"
	}
}
