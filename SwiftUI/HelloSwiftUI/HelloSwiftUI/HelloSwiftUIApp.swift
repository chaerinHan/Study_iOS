//
//  HelloSwiftUIApp.swift
//  HelloSwiftUI
//
//  Created by Jongwook Park on 2023/06/13.
//

import SwiftUI

// @main이 붙은 부분부터 실행하도록 한다
// HelloSwiftUIApp 구조체(struct)는 App 프로토콜을 따른다
@main
struct HelloSwiftUIApp: App {
    
    // body라는 변수는 HelloSwiftUIApp 구조체의 "연산" 프로퍼티 중 하나이다
    // 이 body의 타입은 Scene 프로토콜을 따르는 무엇인가이다 (이건 SwiftUI가 알아서 잡아준다)
    // 이게 이해 안되면 지금은 그냥 이 프로퍼티 선언부는 냅두면 되는거라 생각하자
    var body: some Scene {
        
        // 여러개의 View들이 WindowGroup안 존재할 수도 있다
        WindowGroup {
            June13thCode2View()
        }
    }
}
