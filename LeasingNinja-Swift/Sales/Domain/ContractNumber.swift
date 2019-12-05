//
// Created by Henning Schwentner on 16.11.19.
// Copyright (c) 2019 LeasingNinja. All rights reserved.
//

import Foundation

struct ContractNumber /*: ExpressibleByStringLiteral*/ {
    let number: String

/*    init(stringLiteral value: StringLiteralType) {
        number = value
    }*/

    static func of(_ number: String) -> ContractNumber {
        ContractNumber(number: number)
    }
}
