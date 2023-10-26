//
//  SessionDelegator.swift
//  WatchSample
//
//  Created by Hangyeol on 10/26/23.
//

import Foundation
import WatchConnectivity

class SessionDelegator: NSObject, WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error {
            print(error.localizedDescription)
            return
        }
        print("Activation State: \(activationState)")
    }
    
    #if os(iOS)
    func sessionDidBecomeInactive(_ session: WCSession) {
        print("sessionDidBecomeInactive")
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        print("sessionDidDeactivate")
    }
    #endif
}
