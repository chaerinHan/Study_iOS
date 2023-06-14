//
//  ScrollView.swift
//  SwiftUI_Study
//
//  Created by Chaerin Han on 2022/09/10.
//

import Foundation
import SwiftUI

struct ScrollViews: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                Text("1")
                    .frame(width: 300, height: 500)
                    .background(.red)
                Text("2")
                    .frame(width: 300, height: 500)
                    .background(.blue)
                Text("3")
                    .frame(width: 300, height: 500)
                    .background(.green)
            }
            
        }
        .background(.mint)
    }
}


struct ScrollView_Previews: PreviewProvider {
    static var previews: some View{
        ScrollViews()
    }
}
