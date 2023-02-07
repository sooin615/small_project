//
//  User.swift
//  CafeApp
//
//  Created by Agiss on 2022/12/21.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "아지스", account: "Agiss.com")
}
