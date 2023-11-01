//
//  SessionDelegator.swift
//  WatchSample
//
//  Created by Hangyeol on 10/26/23.
//

import Foundation
import WatchConnectivity

class SessionDelegator: NSObject, WCSessionDelegate {
    let counter: Counter
    
    init(counter: Counter) {
        self.counter = counter
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error {
            print(error.localizedDescription)
            return
        }
        print("\(#function) activationState = \(activationState)")
    }
    
    #if os(iOS)
    func sessionDidBecomeInactive(_ session: WCSession) {
        print("\(#function) activationState = \(session.activationState)")
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        print("\(#function)")
        session.activate()
    }
    
    func sessionWatchStateDidChange(_ session: WCSession) {
        print("\(#function) activationState = \(session.activationState)")
    }
    #endif
}

extension SessionDelegator {
    func sessionReachabilityDidChange(_ session: WCSession) {
        print("\(#function)")
    }
    
    func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : Any]) {
        print("\(#function) applicationContext = \(applicationContext)")
        guard let value = applicationContext["value"] as? Int else {
            return
        }
        
        DispatchQueue.main.async {
            self.counter.value(value)
        }
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("\(#function) message = \(message)")
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
        print("\(#function) message = \(message)")
    }
    
    func session(_ session: WCSession, didReceiveMessageData messageData: Data) {
        print("\(#function) messageData = \(messageData)")
    }
    
    func session(_ session: WCSession, didReceiveUserInfo userInfo: [String : Any] = [:]) {
        print("\(#function) userInfo = \(userInfo)")
    }
    
    func session(_ session: WCSession, didReceive file: WCSessionFile) {
        print("\(#function) file = \(file)")
    }
    
    func session(_ session: WCSession, didFinish userInfoTransfer: WCSessionUserInfoTransfer, error: Error?) {
        print("\(#function) userInfoTransfer = \(userInfoTransfer)")
    }
    
    func session(_ session: WCSession, didFinish fileTransfer: WCSessionFileTransfer, error: Error?) {
        print("\(#function) fileTransfer = \(fileTransfer)")
    }
}
