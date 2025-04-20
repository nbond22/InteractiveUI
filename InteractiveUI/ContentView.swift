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
    @State private var favColor = ""
    @State private var birthday = Date()
    @State private var presentAlert = false
    
    var body: some View {
        ZStack {
            Color(.systemGray5)
                .ignoresSafeArea()
            
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
            
            // General app instructions
            VStack {
                
                VStack {
                    Text("Please answer the following questions and submit your responses when finished!")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.purple)
                }
                .padding()
                
                // Name question and text field
                VStack {
                    Text("What is your name?")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    TextField("Type your name here...", text: $newName)
                        .multilineTextAlignment(.center)
                        .border(Color.green, width: 3)
                        .background(.white)
                        .font(.title3)
                }
                .padding()
                
                
                // Favorite color question and text field
                VStack {
                    Text("What is your favorite color?")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    TextField("Type the color here...", text: $favColor)
                        .multilineTextAlignment(.center)
                        .border(Color.green, width: 3)
                        .background(.white)
                        .font(.title3)
                    
                    //  researched code to stop text field from auto capitalizing the word entered
                        .textInputAutocapitalization(.never)
                }
                .padding()
                
                //                Date picker for birthday
                VStack {
                    Text("When is your birthday?")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    DatePicker(selection: $birthday, displayedComponents: [.date], label: {})
                        .datePickerStyle(.wheel)
                        .padding()
                    
                }
                .padding()
                
                
                VStack {
                    Button("Submit Responses") {
                        presentAlert = true
                        
                        //                  print("Your name is \(newName) and your favorite color is \(favColor)! 🤗")
                    }
                    .font(.title)
                    .fontWeight(.bold)
                    .buttonStyle(.borderedProminent)
                    .tint(.purple)
                }
                .padding()
                .alert("Thank you for your submission!", isPresented: $presentAlert, actions: {
                    Button("Close") {
                        newName = ""
                        favColor = ""
                        birthday = Date()
                    }
                }, message: {
                    Text("Your name is \(newName), your favorite color is \(favColor), and you were born on \(birthday.formatted(date: .long, time: .omitted))! 🤗")
                })
            }
        }
            }
}

#Preview {
    ContentView()
}
