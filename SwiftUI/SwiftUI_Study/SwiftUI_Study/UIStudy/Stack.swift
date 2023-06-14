//
//  Stack.swift
//  SwiftUI_Study
//
//  Created by Chaerin Han on 2022/09/10.
//

import Foundation
import SwiftUI

struct StackView: View {
    var body: some View {
//        ZStack { // depth stack  겹겹이 쌓인다, 위에 얹는것
//            Color.blue
//            Text("Hi")
//        }
//        Hstack {} // 옆으로로 쌓인다
        VStack(alignment: .leading) { // 아래로 쌓인다
            Text("1")
            Text("2")
            Text("3")
            Text("4")
                .background(.green)
        }
        .frame(width: 300, height: 200)
        .background(.orange)
    }
}


struct StackView_Previews: PreviewProvider {
    static var previews: some View{
        StackView()
    }
}

