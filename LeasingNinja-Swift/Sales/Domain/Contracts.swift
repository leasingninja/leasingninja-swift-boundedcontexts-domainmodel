//
// Created by Henning Schwentner on 05.12.19.
// Copyright (c) 2019 LeasingNinja. All rights reserved.
//

import Foundation

//@DomainRepository
protocol Contracts: AnyObject {

    func with(_ number: ContractNumber) -> Contract

    func save(_ contract: Contract)

}
