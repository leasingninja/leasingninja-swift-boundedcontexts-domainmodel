//
// Created by Henning Schwentner on 05.12.19.
// Copyright (c) 2019 LeasingNinja. All rights reserved.
//

import Foundation

class FilloutContract {

    private let contracts: Contracts

    init(contracts: Contracts) {
        self.contracts = contracts
    }

    func with(_ number: ContractNumber, _ customer: Customer, _ car: Car, _ price: Amount) {
        self.contracts.save(Contract(
                number,
                customer,
                car,
                price))
    }
}
