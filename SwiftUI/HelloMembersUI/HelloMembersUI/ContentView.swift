//
//  ContentView.swift
//  HelloMembersUI
//
//  Created by Chaerin Han on 2023/06/15.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    let speech = AVSpeechSynthesizer()
    
    var body: some View {
        
        List(members) { member in
            
            // SwiftUI는 버튼을 만들어줘서
            Button {
                // action
                let message: String = "Hello, \(member.name).  Your house is \(member.house)"
                
                let utterance = AVSpeechUtterance(string: message)
                speech.speak(utterance)
                
            } label: {
                // members 꺼내서 하나씩 member로
                let message:String = "Hello, \(member.name).  Your house is \(member.house)"
                Text("\(message)")
                

            }
            .foregroundColor(.orange)
                        
        }
        .listStyle(.grouped)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
