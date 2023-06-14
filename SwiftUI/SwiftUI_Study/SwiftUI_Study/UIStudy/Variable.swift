//
//  Variable.swift
//  SwiftUI_Study
//
//  Created by Chaerin Han on 2022/09/01.
//

import SwiftUI

struct Variable: View{
    var body: some View {
        
        let name = "Hello chaerin!"
//        
//        var age = "chaeri age"
//        
        Text(name) // Text가 나옴
//        VStack { // vertical stack
//            Text("Hello Chaerin!")
//            Text("Hello Chaerin!")
//            Text("Hello Chaerin!")
//        }
    }
}

struct Variable_Previews: PreviewProvider {
    static var previews: some View{
        Variable()
    }
}
