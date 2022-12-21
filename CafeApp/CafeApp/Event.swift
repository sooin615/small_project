//
//  Event.swift
//  CafeApp
//
//  Created by Agiss on 2022/12/20.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    
    static let sample: [Event] = [
        Event(image: Image("말차 라떼"), title: "제주도 시즌 메뉴", description: "제주 말차로 만든 시즌 메뉴 출시!"),
        Event(image: Image("콜드 브루"), title: "여름 시즌 메뉴", description: "시원한 아이스로 속까지 시원해지는 콜드 브루")

    ]
}
