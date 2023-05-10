//
//  String.swift
//  FusionCrypt
//
//  Created by qihuiyu on 10/05/2023.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
    }
}
