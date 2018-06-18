//
//  Promise+Web3+Eth+GetBlockByNumber.swift
//  web3swift
//
//  Created by Alexander Vlasov on 17.06.2018.
//  Copyright © 2018 Bankex Foundation. All rights reserved.
//

import Foundation
import BigInt
import PromiseKit

extension web3.Eth {
    public func getBlockByNumberPromise(_ number: UInt64, fullTransactions: Bool = false) -> Promise<Block> {
        let block = String(number, radix: 16).addHexPrefix()
        return getBlockByNumberPromise(block, fullTransactions: fullTransactions)
    }
    
    public func getBlockByNumberPromise(_ number: BigUInt, fullTransactions: Bool = false) -> Promise<Block> {
        let block = String(number, radix: 16).addHexPrefix()
        return getBlockByNumberPromise(block, fullTransactions: fullTransactions)
    }
    
    public func getBlockByNumberPromise(_ number: String, fullTransactions: Bool = false) -> Promise<Block> {
        let request = JSONRPCRequestFabric.prepareRequest(.getBlockByNumber, parameters: [number])
        let rp = web3.dispatch(request)
        let queue = web3.requestDispatcher.queue
        return rp.map(on: queue ) { response in
            guard let value: [String: AnyObject] = response.getValue() else {
                throw Web3Error.nodeError("Invalid value from Ethereum node")
            }
            let reencoded = try JSONSerialization.data(withJSONObject: value, options: JSONSerialization.WritingOptions(rawValue: 0))
            let details = try JSONDecoder().decode(Block.self, from: reencoded)
            return details
        }
    }
}