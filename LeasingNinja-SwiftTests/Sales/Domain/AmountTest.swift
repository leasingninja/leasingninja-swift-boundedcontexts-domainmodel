//
// Created by Henning Schwentner on 16.11.19.
// Copyright (c) 2019 LeasingNinja. All rights reserved.
//

import XCTest
@testable import LeasingNinja_Swift

class AmountTest: XCTestCase {

    func test_GivenTwoEqualAmounts_whenEquals_thenAreEqual() {
        // given
        let amount1 = Amount(amount: 100, currency: "EUR")
        let amount2 = Amount(amount: 100, currency: "EUR")

        // when
        let areEqual: Bool = amount1 == amount2

        // then
        XCTAssertTrue(areEqual)
    }

}
