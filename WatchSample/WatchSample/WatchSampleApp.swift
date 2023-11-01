//
//  WatchSampleApp.swift
//  WatchSample
//
//  Created by Hangyeol on 10/26/23.
//

import SwiftUI

@main
struct WatchSampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appDelegate.counter)
        }
    }
}
