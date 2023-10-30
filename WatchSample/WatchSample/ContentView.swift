//
//  ContentView.swift
//  WatchSample
//
//  Created by Hangyeol on 10/26/23.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    @State private var count: Int = 0
    
    private var session = WCSession.default
    
    private let imageWidth: CGFloat = 50
    private let imageHeight: CGFloat = 50
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            
            HStack {
                Button(action: minus) {
                    Image(systemName: "minus")
                        .frame(width: imageWidth, height: imageHeight)
                        .contentShape(Rectangle())
                }
                .foregroundStyle(.primary)
                
                Spacer()
                    .frame(width: 1, height: imageHeight - 30)
                    .background(.primary)
                
                Button(action: plus) {
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
    private func minus() {
        guard count > 0 else {
            return
        }
        count -= 1
        session.sendMessage(["count": count], replyHandler: nil)
    }
    
    private func plus() {
        count += 1
        session.sendMessage(["count": count], replyHandler: nil)
    }
}

#Preview {
    ContentView()
}
