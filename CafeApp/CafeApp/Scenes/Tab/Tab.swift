//
//  Tab.swift
//  CafeApp
//
//  Created by Agiss on 2022/12/19.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    //associate value
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
