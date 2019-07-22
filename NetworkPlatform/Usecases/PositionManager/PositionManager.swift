//
//  PositionManager.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 7/22/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import Starscream
import RxSwift
import RxCocoa

import RxStarscream
public struct PositionManager: Domain.PositionManager {
	
	public var current: PositionModel?{
		didSet {
			currentObs.onNext(current)
		}
	}
	public var status = PositionManagerStatus.closed {
		didSet {
			statusObs.onNext(status)
		}
	}
	public var stopLossOrder: StopMarketOrder?{
		didSet {
			stopLossOrderObs.onNext(stopLossOrder)
		}
	}
	public var currentObs = BehaviorSubject<PositionModel?>(value: nil)
	
	public var currentPrice: Observable<PriceChangeModel>
	
	public var acceptableLossPercent = Constants.Defaults.acceptableLossPercent()
	
	public var stopLossUpdatingStrategy = Constants.Defaults.stopLossUpdatingStrategy()
	
	public var positionUpdatingStrategy = Constants.Defaults.positionUpdateStrategy()
	
	public var statusObs = BehaviorSubject<PositionManagerStatus>(value: .closed)

	public var stopLossOrderObs = BehaviorSubject<StopMarketOrder?>(value: nil)
	
	var socket = WebSocket(url: URL(string: Constants.EndPoints.defaultBitmexSocket.rawValue)!)
	
	public init() {
		let btcINstrumentUpdate = socket.rx.text.flatMapLatest { (mesage) -> Maybe<InstrumentUpdateSymbol.Row> in
			let result = Maybe<InstrumentUpdateSymbol.Row>.create { maybe in
				do{
					let object = try JSONDecoder().decode(InstrumentUpdateSymbol.Row.self, from: mesage.data(using: .utf8)!)
					maybe(.success(object))
				} catch {
					maybe(.completed)
				}
				return Disposables.create {}
			}
			return result
			}.filter { (row) -> Bool in
				row.symbol == SymbolType.BTCUSD.rawValue
		}
		
		self.currentPrice = btcINstrumentUpdate.map({ (row) -> PriceChangeModel in
			return PriceChangeModel(price: row.lastPrice, type: ChangingType.representType(double: row.lastChangePcnt), change: row.lastChangePcnt)
		}).startWith(PriceChangeModel(price: 0, type: .stable, change: 0.0))
		setup()
	}
	
	func startStreaming() {
		socket.connect()
	}
	
	func setup() {
		startStreaming()
		socket.rx.connected.map { (connected) -> Bool in
			print("connected:\(connected ? "true" : "false")")
			return true
		}.subscribe().disposed(by: DisposeBag())
	}
	public func closePositionMarket() -> Observable<Void> {
		
		
		return Observable.just(())
	}
	
	public func closePosition(with: CommonOrderProtocol) -> Observable<Void> {
		
		return Observable.just(())
	}
	
	public func startPosition(withOrder: StopLimitOrder, lossMargin: Double, positionStrategy: PositionUpdateStrategy, stopLossStrategy: StopLossUpdateStrategy) -> Observable<Void> {
		
		return Observable.just(())
	}
	
	public func startPosition(withOrder: StopLimitOrder, lossMargin: Double, positionStrategy: PositionUpdateStrategy, profitPercent: Double) -> Observable<Void> {
		
		return Observable.just(())
	}
	
	

}
