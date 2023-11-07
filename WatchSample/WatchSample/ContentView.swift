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
    
    private let imageWidth: CGFloat = 50
    private let imageHeight: CGFloat = 50
    
    var body: some View {
        VStack {
            Text("\(counter.value)")
                .font(.largeTitle)
            
            HStack {
                Button(action: counter.subtract) {
                    Image(systemName: "minus")
                        .frame(width: imageWidth, height: imageHeight)
                        .contentShape(Rectangle())
                }
                .foregroundStyle(.primary)
                
                Spacer()
                    .frame(width: 1, height: imageHeight - 30)
                    .background(.primary)
                
                Button(action: counter.add) {
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

#Preview {
    ContentView()
}
