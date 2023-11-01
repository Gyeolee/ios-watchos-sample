//
//  ContentView.swift
//  WatchSample Watch App
//
//  Created by Hangyeol on 10/26/23.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    @EnvironmentObject var counter: Counter
    
    private var session = WCSession.default
    
    var body: some View {
        VStack {
            Text("\(counter.value)")
                .font(.largeTitle)
            
            HStack {
                Button(action: tapMinus) {
                    Image(systemName: "minus")
                }
                
                Button(action: tapPlus) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

extension ContentView {
    private func tapMinus() {
        guard counter.value > 0 else {
            return
        }
        counter.value -= 1
//        session.sendMessage(["count": count], replyHandler: nil)
    }
    
    private func tapPlus() {
        counter.value += 1
//        session.sendMessage(["count": count], replyHandler: nil)
    }
}

#Preview {
    ContentView()
}
