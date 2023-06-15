//
//  Members.swift
//  HelloMembersUI
//
//  Created by Chaerin Han on 2023/06/15.
//

import Foundation

struct Member: Identifiable { // SwiftUI는 Identifiable Protocol 따르는
    var name: String
    var house: String
    var id: UUID = UUID()
}

enum House {
    case Gryffindor
    case Slitherin
    case Hufflepuff
    case Ravenclaw
}
// 전역 변수 global property
/*
 매번 이렇게 개별 멤버의 상수들을 이름지어 배열로 묶지 말자
 let member1: Member = Member(name: "Harry", house: "Griffindor")
 let member1: Member = Member(name: "Hermione", house: "Griffindor")
 */

// 한 번에 끝내버리기

let members: [Member] = [
    
    Member(name: "Harry", house: "\(House.Gryffindor)"),
    Member(name: "Hermoine", house: "Gryffindor"),
    Member(name: "Ron", house: "Gryffindor"),
    Member(name: "Nevil", house: "Gryffindor"),
    Member(name: "Malfoy", house: "Slitherin")
    
]

