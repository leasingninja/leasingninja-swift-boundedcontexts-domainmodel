//
// Created by Henning Schwentner on 16.11.19.
// Copyright (c) 2019 LeasingNinja. All rights reserved.
//

import Foundation

// @ValueObject
struct Amount: Equatable {
    let amount: Int
    let currency: String

    static func ==(lhs: Amount, rhs: Amount) -> Bool {
        lhs.amount == rhs.amount && lhs.currency == rhs.currency
    }
}
