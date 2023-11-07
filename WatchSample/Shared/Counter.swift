//
//  Counter.swift
//  WatchSample
//
//  Created by Hangyeol on 11/1/23.
//

import SwiftUI
import WatchConnectivity

final class Counter: ObservableObject {
    @Published private(set) var value: Int = 0
    
    private var session = WCSession.default
    
    func add() {
        value += 1
        try? session.updateApplicationContext(["value": value])
    }
    
    func subtract() {
        guard value > 0 else { return }
        value -= 1
        try? session.updateApplicationContext(["value": value])
    }
    
    func value(_ value: Int) {
        self.value = value
    }
}
