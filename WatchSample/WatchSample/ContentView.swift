//
//  ContentView.swift
//  WatchSample
//
//  Created by Hangyeol on 10/26/23.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    @EnvironmentObject var counter: Counter
    
    private var session = WCSession.default
    
    private let imageWidth: CGFloat = 50
    private let imageHeight: CGFloat = 50
    
    var body: some View {
        VStack {
            Text("\(counter.value)")
                .font(.largeTitle)
            
            HStack {
                Button(action: tapMinus) {
                    Image(systemName: "minus")
                        .frame(width: imageWidth, height: imageHeight)
                        .contentShape(Rectangle())
                }
                .foregroundStyle(.primary)
                
                Spacer()
                    .frame(width: 1, height: imageHeight - 30)
                    .background(.primary)
                
                Button(action: tapPlus) {
                    Image(systemName: "plus")
                        .frame(width: imageWidth, height: imageHeight)
                        .contentShape(Rectangle())
                }
                .foregroundStyle(.primary)
            }
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 4))
        }
    }
}

extension ContentView {
    private func tapMinus() {
        guard counter.value > 0 else {
            return
        }
        counter.value -= 1
//        session.sendMessage(["count": counter.value], replyHandler: nil)
    }
    
    private func tapPlus() {
        counter.value += 1
//        session.sendMessage(["count": counter.value], replyHandler: nil)
    }
}

#Preview {
    ContentView()
}
