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
                Button {
                    counter.subtract()
                    try? session.updateApplicationContext(["value": counter.value])
                } label: {
                    Image(systemName: "minus")
                }
                
                Button {
                    counter.add()
                    try? session.updateApplicationContext(["value": counter.value])
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
