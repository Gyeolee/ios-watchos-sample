//
//  AppDelegate.swift
//  WatchSample
//
//  Created by Hangyeol on 10/26/23.
//

import UIKit
import WatchConnectivity

class AppDelegate: NSObject, UIApplicationDelegate {
    let counter: Counter = .init()
    
    private lazy var sessionDelegator: SessionDelegator = {
        SessionDelegator()
    }()
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        assert(WCSession.isSupported(), "This sample requires Watch Connectivity support!")
        WCSession.default.delegate = sessionDelegator
        WCSession.default.activate()
        
        return true
    }
}
