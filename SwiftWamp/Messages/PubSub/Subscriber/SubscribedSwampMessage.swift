//
//  SubscribedSwampMessage.swift
//  Pods
//
//  Created by Yossi Abraham on 24/08/2016.
//
//

import Foundation

/// [SUBSCRIBED, requestId|number, subscription|number]
class SubscribedSwampMessage: SwampMessage {

    let type: SwampMessageType = .subscribed
    let requestId: Int
    let subscription: NSNumber

    init(requestId: Int, subscription: NSNumber) {
        self.requestId = requestId
        self.subscription = subscription
    }

    // MARK: SwampMessage protocol

    required init(payload: [Any]) {
        self.requestId = payload[0] as! Int
        self.subscription = payload[1] as! NSNumber
    }

    func marshal() -> [Any] {
        return [self.type.rawValue, self.requestId, self.subscription]
    }
}
