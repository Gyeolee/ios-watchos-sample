//
//  WatchSampleApp.swift
//  WatchSample Watch App
//
//  Created by Hangyeol on 10/26/23.
//

import SwiftUI

@main
struct WatchSample_Watch_AppApp: App {
    @WKExtensionDelegateAdaptor private var extensionDelegate: ExtensionDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
