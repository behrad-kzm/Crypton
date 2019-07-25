//
//  Constants.swift
//  Domain
//
//  Created by Behrad Kazemi on 12/26/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

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
	public enum Defaults {
		public static let acceptableLossPercent = { return 15.0 }
		public static let stopLossUpdatingStrategy = { return StopLossUpdateStrategy.autoUpdate }
		public static let positionUpdateStrategy = { return PositionUpdateStrategy.forceClose }
	}
	public enum EndPoints: String {
		
		//Main
		
		case defaultBitmexSocket = "wss://www.bitmex.com/realtime"
		case socketXBT = "?subscribe=instrument:XBTUSD"
		
		case defaultBitmexURL = "https://www.bitmex.com"
		case userModel = "/api/v1/user"
		case position = "/api/v1/position"
		case exchangeInfo = "exchangeInfo"
	}
}
