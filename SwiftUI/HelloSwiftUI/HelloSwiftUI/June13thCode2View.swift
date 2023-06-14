//
//  June13thCode2View.swift
//  HelloSwiftUI
//
//  Created by Chaerin Han on 2023/06/13.
//


import Foundation
import SwiftUI
import AVFoundation

struct June13thCode2View: View {
    
    @State var multipleEquation: String = ""
    @State var speechLine: String = ""
    let speechSynth = AVSpeechSynthesizer()
    
    
    func multiplication(number: Int) -> String {
//        multipleEquation = ""
        var temp: String = ""
        
        for j in 1...9 {
            temp += "\(number) x \(j) = \(number*j)\n"
        }
        
        return temp
    }
    
    func speak(number: Int) -> String {
        var speech: String = ""
        
        for j in 1...9 {
            speech += "\(number) times \(j) is \(number*j) "
        }
        return speech
    }
    
    func pressed(n: Int) {
        multipleEquation = multiplication(number: n)
        speechLine = speak(number: n)
        var utterance = AVSpeechUtterance(string: speechLine)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        speechSynth.speak(utterance)
    }
    
    var body: some View {
        
        Text("Multiplication Table")
        Text("\(multipleEquation)").padding(30)
        
        VStack {
            Spacer()
            HStack {
                Button("1") {
                    pressed(n: 1)
                }
                Spacer()
                Button("2") {
                    pressed(n: 2)
                }
                Spacer()
                Button("3") {
                    pressed(n: 3)
                }
            }.padding(50)
            HStack {
                Button("4") {
                    pressed(n: 4)
                }
                Spacer()
                Button("5") {
                    pressed(n: 5)
                }
                Spacer()
                Button("6") {
                    pressed(n: 6)
                }
            }.padding(50)
            HStack {
                Button("7") {
                    pressed(n: 7)
                }
                Spacer()
                Button("8") {
                    pressed(n: 8)
                }
                Spacer()
                Button("9") {
                    pressed(n: 9)
                }
            }.padding(50)
        }
        .font(.title)
    }
    
}

struct June13thCode2View_Preview: PreviewProvider {
    static var previews: some View {
        June13thCode2View()
    }
}

