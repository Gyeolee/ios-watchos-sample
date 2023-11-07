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
    
    var body: some View {
        VStack {
            Text("\(counter.value)")
                .font(.largeTitle)
            
            HStack {
                Button(action: counter.subtract) {
                    Image(systemName: "minus")
                }
                
                Button(action: counter.add) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
