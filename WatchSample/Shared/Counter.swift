//
//  Counter.swift
//  WatchSample
//
//  Created by Hangyeol on 11/1/23.
//

import SwiftUI

final class Counter: ObservableObject {
    @Published private(set) var value: Int = 0
    
    func add() {
        value += 1
    }
    
    func subtract() {
        guard value > 0 else { return }
        value -= 1
    }
    
    func value(_ value: Int) {
        self.value = value
    }
}
