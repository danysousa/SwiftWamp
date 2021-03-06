//
//  UnregisteredSwampMessage.swift
//  Pods
//
//  Created by Yossi Abraham on 01/09/2016.
//
//

import Foundation

/// [UNREGISTERED, requestId|number]
class UnregisteredSwampMessage: SwampMessage {

    let type: SwampMessageType = .unregistered
    let requestId: Int

    init(requestId: Int) {
        self.requestId = requestId
    }

    // MARK: SwampMessage protocol

    required init(payload: [Any]) {
        self.requestId = payload[0] as! Int
    }

    func marshal() -> [Any] {
        return [self.type.rawValue, self.requestId]
    }
}
