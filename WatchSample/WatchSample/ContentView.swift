//
//  ContentView.swift
//  WatchSample
//
//  Created by Hangyeol on 10/26/23.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                WCSession.default.sendMessage(["TEST": "ABC"], replyHandler: nil)
            } label: {
                Text("TEST")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
