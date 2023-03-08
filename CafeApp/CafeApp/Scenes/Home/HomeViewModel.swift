//
//  HomeViewModel.swift
//  CafeApp
//
//  Created by Agiss on 2023/03/08.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload else { return }
            
            coffeeMenu.shuffle()
            events.shuffle()
            
            isNeedToReload = false
        }
    }
    
    @Published var coffeeMenu: [CoffeeMenu] = [
        CoffeeMenu(image: Image("커피"), name: "아메리카노"),
        CoffeeMenu(image: Image("카페 라떼"), name: "카페라떼"),
        CoffeeMenu(image: Image("카푸치노"), name: "카푸치노"),
        CoffeeMenu(image: Image("에스프레소"), name: "에스프레소"),
        CoffeeMenu(image: Image("카페 모카"), name: "카페모카"),
        CoffeeMenu(image: Image("말차 라떼"), name: "말차라떼"),
        CoffeeMenu(image: Image("콜드 브루"), name: "콜드브루"),
        
    ]
    
    @Published var events: [Event] = [
        Event(image: Image("말차 라떼"), title: "제주도 시즌 메뉴", description: "제주 말차로 만든 시즌 메뉴 출시!"),
        Event(image: Image("콜드 브루"), title: "여름 시즌 메뉴", description: "시원한 아이스로 속까지 시원해지는 콜드 브루")
        
    ]
}
