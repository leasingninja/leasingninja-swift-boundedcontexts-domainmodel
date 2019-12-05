//
// Created by Henning Schwentner on 16.11.19.
// Copyright (c) 2019 LeasingNinja. All rights reserved.
//

import XCTest
@testable import LeasingNinja_Swift

class ContractTest: XCTestCase {

    func test_givenANewContract_whenSign_thenContractIsSigned() {
        // given
        let contract: Contract = Contract(ContractNumber(number: "4711"),
                Customer(name: "John Buyer"), 
                Car(car: "Mercedes Benz C-Class"),
                Amount(amount: 20_000, currency: "EUR"))

        // when
        contract.sign(date: SignDate(year: 2018, month: 12, day: 24))

        // then
        XCTAssertTrue(contract.isSigned)
        // check that event ContractSigned is fired
    }

    func test_given_whenRestore_thenContractContainsRestoredData() {
        // given

        // when
        let contract: Contract = Contract.restore(
            ContractNumber(number: "4711"),
            Customer(name: "John Buyer"),
            Car(car: "Mercedes Benz C-Class"),
            Amount(amount: 20_000, currency: "EUR"),
            SignDate(year: 2018, month: 04, day: 12))

        // then
      //  XCTAssertEqual(contract.number, ContractNumber.of("4711"))
        XCTAssertEqual(contract.lessee, Customer(name: "John Buyer"))
        XCTAssertEqual(contract.car, Car(car: "Mercedes Benz C-Class"))
        XCTAssertEqual(contract.price, Amount(amount: 20_000, currency: "EUR"))
        XCTAssertTrue(contract.isSigned)
        XCTAssertEqual(contract.signDate, SignDate(year: 2018, month: 04, day: 12))
        // check that event ContractSigned is fired
    }

}
