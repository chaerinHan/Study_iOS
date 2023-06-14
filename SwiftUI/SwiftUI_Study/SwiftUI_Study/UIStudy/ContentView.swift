//
//  ContentView.swift
//  SwiftUI_Study
//
//  Created by Chaerin Han on 2022/09/10.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
//

struct ContentView: View {
    var body: some View {
//        Image("photo_reen")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 300, height: 300)
//            .clipped()
//            .background(.cyan)
//            .border(.orange)
        Image(systemName: "heart.fill")
            .frame(width: 350, height: 350)
            .aspectRatio(contentMode: .fill)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}

