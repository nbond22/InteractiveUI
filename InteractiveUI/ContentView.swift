//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 4/20/25.
//

import SwiftUI

struct ContentView: View {
//    Initial lesson info
//    @State private var name = ""
//    @State private var textTitle = "What is your name?"
    
//    Lesson Practice Info
    @State private var newName = ""
    
    var body: some View {
//    Initial lesson code
        /*        VStack {
         
         Text(textTitle)
         .font(.title)
         TextField("Type your name here...", text: $name)
         .multilineTextAlignment(.center)
         .font(.title)
         .border(Color.gray, width: 2)
         Button("Submit Name") {
         textTitle = "Welcome, \(name)!"
         }
         .font(.title2)
         .buttonStyle(.borderedProminent)
         .tint(.purple)
         }
         .padding()
         */
        
//    Lesson Practice Code
        
        
        VStack {
            Text("Please answer the following questions and submit your responses when finished")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
        }
        .padding()
        
        VStack {
            Text("What is your name?")
            TextField("Type your name here...", text: $newName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
