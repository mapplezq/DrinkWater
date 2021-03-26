//
//  ContentView.swift
//  Shared
//
//  Created by Mapple on 2021/3/26.
//

import SwiftUI

struct ContentView: View {
    @State var isWatered = false
    
    var body: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
                Image(systemName: isWatered ? "crown.fill" : "eyes.inverse")
                    .font(.system(size: 150))
                    .foregroundColor(isWatered ? .yellow : .red)
            }
            .frame(minHeight: 600)
            .shadow(radius: 10)

            
            Divider()
            
            Toggle(isOn: $isWatered) {
                Label("你喝水了吗？", systemImage: "drop.fill")
            }
            .foregroundColor(.blue)
        }
        .padding()

    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Complicated Function
