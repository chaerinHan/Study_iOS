//
//  Button.swift
//  SwiftUI_Study
//
//  Created by Chaerin Han on 2022/09/10.
//

import Foundation
import SwiftUI

struct ButtonStudy: View {
    var body: some View {
        
        Button {
            print("Button Clicked!")
        } label: {
            Text("Ian")
                .padding()
                .frame(width: 150)
                .background(.orange)
                .cornerRadius(13)
        }
        
    }
}



struct ButtonStudy_Previews: PreviewProvider {
    static var previews: some View{
        ButtonStudy()
    }
}

