//
//  CoinDetail.swift
//  CryptoTrader
//
//  Created by Salar Soleimani on 9/17/18.
//  Copyright © 2018 SB. All rights reserved.
//

import Foundation

struct CoinDetail: Decodable {
  var symbol: String
  var priceChange: String
  var priceChangePercent: String
  var weightedAvgPrice: String
  var prevClosePrice: String
  var lastPrice: String
  var lastQty: String
  var bidPrice: String
  var bidQty: String
  var askPrice: String
  var askQty: String
  var openPrice: String
  var highPrice: String
  var lowPrice: String
  var volume: String
  var quoteVolume: String
  var openTime: Int
  var closeTime: Int
  var firstId: Int
  var lastId: Int
  var count: Int
}
