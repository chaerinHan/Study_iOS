//
//  SampleTextFieldView.swift
//  HelloSwiftUI
//
//  Created by Chaerin Han on 2023/06/13.
//

import Foundation
import SwiftUI
import AVFoundation

struct SampleTextFieldView: View {
    
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            TextField("Input your name Here!", text: $name)
            
            Text("Hello \(name)")
            
            Spacer()
            
            Button("Say Hello") {
                // 버튼이 눌렸을 때 처리할 별도의 클로저
                // print 등등함수 실행 내용 쓰기 가능
                let message: String = "Hello \(name)"
                var utterance = AVSpeechUtterance(string: message)
                print("Hello \(name)")
                
            }
            .foregroundColor(.white)
            .background(Color(.blue))
            .cornerRadius(6.0)
            Spacer()
        }
        .font(.largeTitle)
        .padding(20) // 양 옆에 padding
    }
    
}

struct SampleTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTextFieldView()
    }
}
