//
//  CoffeMenu.swift
//  CafeApp
//
//  Created by Agiss on 2022/12/20.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let image: Image //UI Image
    let name: String
    
    let id = UUID()
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("커피"), name: "아메리카노"),
        CoffeeMenu(image: Image("카페 라떼"), name: "카페라떼"),
        CoffeeMenu(image: Image("카푸치노"), name: "카푸치노"),
        CoffeeMenu(image: Image("에스프레소"), name: "에스프레소"),
        CoffeeMenu(image: Image("카페 모카"), name: "카페모카"),
        CoffeeMenu(image: Image("말차 라떼"), name: "말차라떼"),
        CoffeeMenu(image: Image("콜드 브루"), name: "콜드브루"),

    ]
}
