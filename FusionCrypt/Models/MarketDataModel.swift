//
//  MarketDataModel.swift
//  FusionCrypt
//
//  Created by qihuiyu on 19/04/2023.
//

import Foundation

// JSON data
/*
 URL: https://api.coingecko.com/api/v3/global

 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10755,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 715,
     "total_market_cap": {
       "btc": 43587263.79762419,
       "eth": 644013959.9162493,
       "ltc": 13665085743.704432,
       "bch": 10053625241.284382,
       "bnb": 3919054205.0627823,
       "eos": 1142023520775.2546,
       "xrp": 2574015808339.166,
       "xlm": 12914394905513.715,
       "link": 160141975892.5261,
       "dot": 198717197880.58334,
       "yfi": 149626407.80814838,
       "usd": 1277397925734.5154,
       "aed": 4691116142467.427,
       "ars": 277770362896271.72,
       "aud": 1902247340290.9583,
       "bdt": 135665406726273.27,
       "bhd": 481591791981.1706,
       "bmd": 1277397925734.5154,
       "brl": 6486882146464.994,
       "cad": 1719212823706.238,
       "chf": 1146818477572.157,
       "clp": 1015212001477505.2,
       "cny": 8796162116607.855,
       "czk": 27321370054987.5,
       "dkk": 8690877702170.921,
       "eur": 1166236203441.2454,
       "gbp": 1026915521273.0856,
       "hkd": 10027190497638.223,
       "huf": 441761953659893.25,
       "idr": 19137337024391636,
       "ils": 4660030663944.682,
       "inr": 105102763342333.36,
       "jpy": 172168255609695.53,
       "krw": 1700565363676772.2,
       "kwd": 391623378673.7617,
       "lkr": 410186688837470.44,
       "mmk": 2683282903945465.5,
       "mxn": 23041927329036.2,
       "myr": 5672285489224.134,
       "ngn": 588280066738516.4,
       "nok": 13507370451049.168,
       "nzd": 2059355788574.972,
       "php": 71845335345640.83,
       "pkr": 358415122832822.44,
       "pln": 5390038030543.428,
       "rub": 104363407977714.05,
       "sar": 4790613944300.83,
       "sek": 13218088361991.504,
       "sgd": 1704589172252.429,
       "thb": 43967203740334.3,
       "try": 24779220442983.28,
       "twd": 39093869338556.82,
       "uah": 47190032720637.35,
       "vef": 127905854303.79713,
       "vnd": 30035220450042056,
       "zar": 23220411754209.43,
       "xdr": 947051325558.236,
       "xag": 50433828910.49326,
       "xau": 640308484.2536848,
       "bits": 43587263797624.195,
       "sats": 4358726379762419.5
     },
     "total_volume": {
       "btc": 2229673.083434601,
       "eth": 32944040.682353172,
       "ltc": 699026991.1648921,
       "bch": 514285496.2291146,
       "bnb": 200476215.11919647,
       "eos": 58419338198.06771,
       "xrp": 131671806489.99173,
       "xlm": 660625976509.1835,
       "link": 8191940077.575153,
       "dot": 10165226002.4185,
       "yfi": 7654024.249143662,
       "usd": 65344312161.220955,
       "aed": 239970451980.86743,
       "ars": 14209130089038.45,
       "aud": 97308005209.3794,
       "bdt": 6939859935582.07,
       "bhd": 24635459127.90196,
       "bmd": 65344312161.220955,
       "brl": 331831486017.11115,
       "cad": 87945014752.7346,
       "chf": 58664620539.16451,
       "clp": 51932392090130.305,
       "cny": 449960933542.16656,
       "czk": 1397603751797.8403,
       "dkk": 444575189989.5281,
       "eur": 59657919428.327126,
       "gbp": 52531076678.15145,
       "hkd": 512933247171.936,
       "huf": 22597994265807.434,
       "idr": 978955812643331.4,
       "ils": 238380298144.42435,
       "inr": 5376451330073.419,
       "jpy": 8807135202089.707,
       "krw": 86991118222427.77,
       "kwd": 20033193878.074944,
       "lkr": 20982785786473.777,
       "mmk": 137261281046357.92,
       "mxn": 1178692138018.732,
       "myr": 290161418151.9026,
       "ngn": 30093016079607.086,
       "nok": 690959186209.0182,
       "nzd": 105344767506.40012,
       "php": 3675193082416.8745,
       "pkr": 18334450994370.734,
       "pln": 275723265658.3181,
       "rub": 5338630172883.127,
       "sar": 245060185799.4179,
       "sek": 676161182588.3651,
       "sgd": 87196953067.11293,
       "thb": 2249108620097.6885,
       "try": 1267562036165.7966,
       "twd": 1999816932675.6536,
       "uah": 2413969967285.221,
       "vef": 6542925976.703059,
       "vnd": 1536428689431372.5,
       "zar": 1187822372035.4573,
       "xdr": 48445684937.51965,
       "xag": 2579903876.012561,
       "xau": 32754489.913933694,
       "bits": 2229673083434.601,
       "sats": 222967308343460.1
     },
     "market_cap_percentage": {
       "btc": 44.395794353704666,
       "eth": 18.525427573970184,
       "usdt": 6.36441971591934,
       "bnb": 4.027593442885803,
       "usdc": 2.4494704961770197,
       "xrp": 2.0116722647968035,
       "ada": 1.149239774384426,
       "doge": 0.9705042221822486,
       "steth": 0.940925942196871,
       "matic": 0.8002206029515356
     },
     "market_cap_change_percentage_24h_usd": -3.2631665552340525,
     "updated_at": 1681933557
   }
 }
 
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
