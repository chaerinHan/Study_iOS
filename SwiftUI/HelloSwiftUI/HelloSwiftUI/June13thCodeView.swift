//
//  June13thCodeView.swift
//  HelloSwiftUI
//
//  Created by Chaerin Han on 2023/06/13.
//


import Foundation
import SwiftUI
import AVFoundation

struct June13thCodeView: View {
    
    @State var name: String = ""
    @State var firstName: String = ""
    let speechSynth = AVSpeechSynthesizer()
    
    let members: [String] = ["Sangkyu", "SeungJun", "Chaerin", "Jeongwon",
    "Hyebin", "Yeohoon", "Segeun", "Haesoo"]
    let first: [String] = ["Kim", "Lee", "Han", "Han", "Yoon", "Jang", "Choi", "Yoon"]
    
    var body: some View {
        VStack {
//            TextField("Input your name Here!", text: $name)
            
            Text("Hello \(name) ")
            Text("Your first name is \(firstName)")
            Spacer()
            VStack {
                Button("\(members[0])") {
                    name = members[0]
                    firstName = first[0]
                    let nameMessage: String = "Hello\(name) And your firstname is \(firstName)"
                    var utterance = AVSpeechUtterance(string: nameMessage)
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                    speechSynth.speak(utterance)
                    print("Hello \(name)")
                }
                Button("\(members[1])") {
                    name = members[1]
                    firstName = first[1]
                    let nameMessage: String = "Hello\(name) And your firstname is \(firstName)"
                    var utterance = AVSpeechUtterance(string: nameMessage)
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                    speechSynth.speak(utterance)
                    print("Hello \(name)")
                }
                .foregroundColor(.black)
                Button("\(members[2])") {
                    name = members[2]
                    firstName = first[2]
                    let nameMessage: String = "Hello\(name) And your firstname is \(firstName)"
                    var utterance = AVSpeechUtterance(string: nameMessage)
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                    speechSynth.speak(utterance)
                    print("Hello \(name)")
                }
                .foregroundColor(.green)
                Button("\(members[3])") {
                    name = members[3]
                    firstName = first[3]
                    let nameMessage: String = "Hello\(name) And your firstname is \(firstName)"
                    var utterance = AVSpeechUtterance(string: nameMessage)
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                    speechSynth.speak(utterance)
                    print("Hello \(name)")
                }
                .foregroundColor(.orange)
                Button("\(members[4])") {
                    name = members[4]
                    firstName = first[4]
                    let nameMessage: String = "Hello\(name) And your firstname is \(firstName)"
                    var utterance = AVSpeechUtterance(string: nameMessage)
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                    speechSynth.speak(utterance)
                    print("Hello \(name)")
                }
                .foregroundColor(.pink)
                Button("\(members[5])") {
                    name = members[5]
                    firstName = first[5]
                    let nameMessage: String = "Hello\(name) And your firstname is \(firstName)"
                    var utterance = AVSpeechUtterance(string: nameMessage)
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                    speechSynth.speak(utterance)
                    print("Hello \(name)")
                }
                .foregroundColor(.gray)
                Button("\(members[6])") {
                    name = members[6]
                    firstName = first[6]
                    let nameMessage: String = "Hello\(name) And your firstname is \(firstName)"
                    var utterance = AVSpeechUtterance(string: nameMessage)
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                    speechSynth.speak(utterance)
                    print("Hello \(name)")
                }
                .foregroundColor(.purple)
                Button("\(members[7])") {
                    name = members[7]
                    firstName = first[7]
                    let nameMessage: String = "Hello\(name) And your firstname is \(firstName)"
                    var utterance = AVSpeechUtterance(string: nameMessage)
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                    speechSynth.speak(utterance)
                    print("Hello \(name)")
                }
                .foregroundColor(.yellow)
            }
        }
        .font(.largeTitle)
        .padding(20) // 양 옆에 padding
        
    }
    
}

struct June13thCodeView_Previews: PreviewProvider {
    static var previews: some View {
        June13thCodeView()
    }
}
