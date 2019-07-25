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

public final class PositionManager: Domain.PositionManager {
	
	private var controlInfo = PositionManagerControlInfo(startBTC: -1, startUSD: -1)
	public var controlInfoObs = BehaviorSubject<PositionManagerControlInfo>(value: PositionManagerControlInfo(startBTC: -1, startUSD: -1))
	
	
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
	let disposeBag = DisposeBag()
	var socket: WebSocket
	let positionUseCase: PositionUseCase

	public static let shared: PositionManager = {
		let network = PositionNetwork(network: Network<PositionNetworkModel.Response>(Constants.EndPoints.defaultBitmexURL.rawValue))
		let orderUseCase = OrderUsecase()
		let positionUsecase = PositionUseCase(network: network, orderUseCase: orderUseCase)
		let manager = PositionManager(positionUseCase: positionUsecase)
	
		return manager
	}()
	
	private init(positionUseCase: PositionUseCase) {
		let socketPath = Constants.EndPoints.defaultBitmexSocket.rawValue + Constants.EndPoints.socketXBT.rawValue
		socket = WebSocket(url: URL(string: socketPath)!)
		socket.connect()
		socket.rx.connected.map { (connected) -> Bool in
			print("connected:\(connected ? "true" : "false")")
			
			return connected
		}.subscribe().disposed(by: disposeBag)
		let btcINstrumentUpdate = socket.rx.text.flatMapLatest { (mesage) -> Maybe<InstrumentUpdateSymbol> in
			let result = Maybe<InstrumentUpdateSymbol>.create { maybe in
				do{
					let object = try JSONDecoder().decode(InstrumentUpdateSymbol.self, from: mesage.data(using: .utf8)!)
					maybe(.success(object))
				} catch {
					maybe(.completed)
				}
				return Disposables.create {}
			}
			return result
			}.map({ (item) -> InstrumentUpdateSymbol.Row? in
				return item.data.first
			}).filter{$0 != nil}.map{return $0!}
		
		self.currentPrice = btcINstrumentUpdate.filter{$0.lastPrice != nil}.map({ (row) -> PriceChangeModel in

			return PriceChangeModel(price: row.lastPrice!, type: ChangingType.representType(tick: row.lastTickDirection))
		}).startWith(PriceChangeModel(price: 0, type: .stable))
		self.positionUseCase = positionUseCase
		self.startControlPosition()
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
	
	private func updatePositionInfo(){
		positionUseCase.getPosition(symbol: SymbolType.BTCUSD.rawValue).subscribe(onNext: { (position) in
			self.current = position
		}).disposed(by: disposeBag)
	}

	private func startControlPosition() {
		updatePositionInfo()
		
	}
}
