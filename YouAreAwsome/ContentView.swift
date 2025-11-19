//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by CUEVA VASQUEZ, JUSTIN on 11/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastImageNumber = -1
    @State private var lastMessageNumber = -1 // lastMessageNumber will never be -1
    var body: some View {
        VStack {
            
            Text(message)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundStyle(.red)
            .multilineTextAlignment(.center)
            .minimumScaleFactor(0.5)
            .frame(height: 120)
            .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
                
                Button("Show Message!") {
                    let messages = ["You Are Awesome!", "When the Genius Bar Needs Help, They Call You!","You Are Great!", "You Are Fantastic", "Fabulous? That's You!","You Make Me Smile!"]

                    //generate a ranodm number messageNumber to use as an Index
                    //if messageNumber == lastMessageNumber
                    //keep gneerating a new random messageNumber
                    // until you get a messageNumber != mlastMessageNumber
                    //set messageString to messages(messageNumber)
                    // update the lastMessageNumber with messageNumber
                    
                    var messageNumber = Int.random(in: 0...messages.count-1)
                    while messageNumber == lastMessageNumber{
                        messageNumber = Int.random(in: 0...messages.count-1)
                    }
                    message = messages [messageNumber]
                    lastImageNumber = messageNumber
                    
                    message = messages[Int.random(in: 0...messages.count-1)]
                   
                    var imageNumber : Int
                    repeat{
                        imageNumber = Int.random(in:0...9)
                    }while imageNumber == lastImageNumber
                    imageName = "image\(imageNumber)"
                    lastImageNumber = imageNumber
                }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.blue)
            
        }
        
        
        .padding()
        
    }
}

#Preview {
    ContentView()
}
