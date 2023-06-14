//
//  Assignment1.swift
//  SwiftUI_Study
//
//  Created by Chaerin Han on 2022/09/10.
//

import Foundation
import SwiftUI

struct Assignment1: View {
    var body: some View {
        // 전체 구조는 vstack
        VStack{
            Text("Q1. 인생에서 가장 중요한 것은 무엇인가요?")
                .padding()
            VStack { // 가로로 두 줄이 세로로 있으니 Vstack
                HStack { // 버튼들이 가로로 두개 있어야하니 HStack
                    Button {
                        print("Heart Clicked!")
                    } label: {
                        Image(systemName: "heart")
                        Text(" 사랑 ")
                            .background(.clear)
                            .cornerRadius(13)
                    }
                    Button {
                        print("Person Clicked!")
                    } label: {
                        Image(systemName: "person")
                        Text(" 우정 ")
                            .background(.clear)
                            .cornerRadius(13)
                    }
                    
                }
                HStack {
                    Button {
                        print("Game Clicked!")
                    } label: {
                        Image(systemName: "gamecontroller")
                        Text(" 게임 ")
                            .background(.clear)
                            .cornerRadius(13)
                    }
                    Button {
                        print("Exercise Clicked!")
                    } label: {
                        Image(systemName: "figure")
                        Text(" 운동 ")
                            .background(.clear)
                            .cornerRadius(13)
                    }
                }
            
                Text("Q2. 지금 가장 여행가고 싶은 곳은?")
                    .padding()
                
                VStack {
                    HStack {
                        Button {
                            print("valley Clicked!")
                        } label: {
                            Image(systemName: "fish")
                            Text(" 계곡 ")}
                        .background(.clear)
                        .cornerRadius(13)
                        Button {
                            print("beach Clicked!")
                        } label: {
                            Image(systemName: "beach.umbrella")
                            Text(" 바다 ")
                                .background(.clear)
                                .cornerRadius(13)
                        }
                    }
                    HStack {
                        Button {
                            print("baseball Clicked!")
                        } label: {
                            Image(systemName: "baseball")
                            Text(" 야구장 ")
                                .background(.clear)
                                .cornerRadius(13)
                        }
                        Button {
                            print("city Clicked!")
                        } label: {
                            Image(systemName: "car")
                            Text("도심")
                                .background(.clear)
                                .cornerRadius(13)
                        }
                    }
                    
                }
                
            }
            
        }
    }
}



struct Assignment1_Previews: PreviewProvider {
    static var previews: some View{
        Assignment1()
    }
}

