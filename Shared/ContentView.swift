//
//  ContentView.swift
//  Shared
//
//  Created by Nathan Retta on 4/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var taps = 0
        var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("You have tapped the button this many times:")
                        .navigationBarTitle("TechConfluence")
                    Text("\(taps)")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                }
                ZStack(alignment: .bottomTrailing) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    Button(action: {
                        self.taps += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .foregroundColor(Color(red: 153/255, green: 102/255, blue: 255/255))
                            .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
                    }
                }.padding()
            }
        }
        .ignoresSafeArea()
    }
}
