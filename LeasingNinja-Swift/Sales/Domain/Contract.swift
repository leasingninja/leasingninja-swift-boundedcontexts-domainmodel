//
// Created by Henning Schwentner on 16.11.19.
// Copyright (c) 2019 LeasingNinja. All rights reserved.
//

import Foundation

//@DomainEntity
class Contract/*: Entity<ContractNumber>*/ {

    let lessee: Customer

    let car: Car

    let price: Amount

    private var _signDate: SignDate?
    var signDate: SignDate {
        precondition(isSigned)
        return self._signDate!
    }
    var isSigned: Bool {
        self._signDate != nil
    }

    //@Factory
    static func restore(_ number: ContractNumber, _ lessee: Customer, _ car: Car, _ price: Amount, _ signDate: SignDate?) -> Contract {
        let contract = Contract(number, lessee, car, price)
        contract._signDate = signDate // TODO: set directly here or replay with sign() ?
        return contract
    }

    init(_ number: ContractNumber, _ lessee: Customer, _ car: Car, _ price: Amount) {
        //super(number);
        self.lessee = lessee;
        self.car = car;
        self.price = price;
    }

    func sign(date: SignDate) {
        precondition(!isSigned)

        self._signDate = date;

        assert(isSigned)
    }
}
