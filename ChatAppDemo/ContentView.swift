//
//  ContentView.swift
//  ChatAppDemo
//
//  Created by Artush on 01.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    var messageArray = ["Hello you", "How are you doing?", "I've been building SwiftUI applicatiopns from scratch and it's so much fun!"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView {
                    ForEach(messageArray, id: \.self) {text in
                        MessageBubble(message: Message(id: "12345", text: text, received: true, timeStamp: Date()))
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("Peach"))
            
            MessageField()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
