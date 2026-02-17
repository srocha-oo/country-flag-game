//
//  ContentView.swift
//  country flag game
//
//  Created by stephanie rocha marquez on 1/6/26.
//

import SwiftUI

struct ContentView: View {
    @State private var gameManager = GameManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack (spacing: 20) {
                    Text("Country Flag Game")
                        .font(.title)
                        .fontWeight(.heavy)
                    Text("Ready to test your skills?")
                }
                NavigationLink {
                    QuestionView()
                        .environment(gameManager)
                } label: {
                    CustomButton(text: "Start")
                }
            }
            .foregroundStyle(.yellow)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.cyan)
        }
    }
}

#Preview {
    ContentView()
}
