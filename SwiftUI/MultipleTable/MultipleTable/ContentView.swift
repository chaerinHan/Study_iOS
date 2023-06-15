//
//  ContentView.swift
//  MultipleTable
//
//  Created by Chaerin Han on 2023/06/14.
//

import SwiftUI
import AVFoundation


struct ContentView: View {
    
    @State var selectedIndex: Int = 0
    @State var result: String = ""
    
    let speechSynth =  AVSpeechSynthesizer()
    
    var body: some View {
        VStack {
            Text("#Table")
                .font(.headline)
                .padding()
            
            HStack {
                Group {
                    Button {
                        // selectedIndex = 0
                        updateSelectedIndex(1)
                    } label: {
                        Text("1")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Group {
                    Button {
                        updateSelectedIndex(2)
                    } label: {
                        Text("2")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Group {
                    Button {
                        updateSelectedIndex(3)
                    } label: {
                        Text("3")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Group {
                    Button {
                        updateSelectedIndex(4)
                    } label: {
                        Text("4")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Group {
                    Button {
                        updateSelectedIndex(5)
                    } label: {
                        Text("5")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Group {
                    Button {
                        updateSelectedIndex(6)
                    } label: {
                        Text("6")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Group {
                    Button {
                        updateSelectedIndex(7)
                    } label: {
                        Text("7")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Group {
                    Button {
                        updateSelectedIndex(8)
                    } label: {
                        Text("8")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Group {
                    Button {
                        updateSelectedIndex(9)
                    } label: {
                        Text("9")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
            }
            .padding()
    
            
            if selectedIndex > 0 {
                Text("Table for \(selectedIndex)")
                    .padding()
                Text("\(result)")
                    .font(.title)
                HStack{
                    Button {
                        let message = "\(result)"
                        
                        let utterance = AVSpeechUtterance(string: message)
                        speechSynth.speak(utterance)
                    } label: {
                        Text("Say it")
                            .font(.largeTitle)
                            .padding()
                    }
                    
                    Button {
                        speechSynth.stopSpeaking(at: .immediate )
                    } label: {
                        Text("STOP")
                            .font(.largeTitle)
                            .padding()
                    }
                }
                
            }
            
            
            Spacer()
        
        }
        
    }
    
    func updateSelectedIndex(_ index: Int) {
        selectedIndex = index
        print("\(selectedIndex) is pressed")
        
        result = ""
        
        for j in 1...9 {
            result += "\(selectedIndex) x \(j) = \(selectedIndex*j)\n"
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
