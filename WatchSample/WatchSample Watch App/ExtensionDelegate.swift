//
//  ExtensionDelegate.swift
//  WatchSample Watch App
//
//  Created by Hangyeol on 10/26/23.
//

import WatchKit
import WatchConnectivity

class ExtensionDelegate: NSObject, WKExtensionDelegate {
    let counter: Counter = .init()
    
    private lazy var sessionDelegator: SessionDelegator = {
        SessionDelegator(counter: counter)
    }()
    
    override init() {
        super.init()
        
        assert(WCSession.isSupported(), "This sample requires a platform supporting Watch Connectivity!")
        WCSession.default.delegate = sessionDelegator
        WCSession.default.activate()
    }
}
