//
//  ContentView.swift
//  Momentum
//
//  Created by SHSM Student1 on 2023-11-24.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = "Terry"
    @State private var userInput: String = ""

    var body: some View {
        VStack {
            Spacer()
            
            Text("Hello \(username)!")
                .font(.largeTitle)
                .foregroundStyle(Color.blue)
            
            Text("What would you like to get done today?")
                .font(.title3)
                .foregroundStyle(Color.blue)
                .padding(.top, 5)
            
            TextField("Enter text here.", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Submit") {
                // Handle the submit action
            }
            .foregroundStyle(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.horizontal)
            
            Spacer()
            
            HStack {
                Spacer()
                Button("Settings") {
                    // Handle settings action
                }
                Spacer()
                Button("Profile") {
                    // Handle profile action
                }
                Spacer()
                Button("Trophies") {
                    // Handle trophies action
                }
                Spacer()
            }
            .padding()
            .background(Color.gray.opacity(0.2))
        }
        .padding(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}