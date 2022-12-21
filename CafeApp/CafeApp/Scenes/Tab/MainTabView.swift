//
//  MainTabView.swift
//  CafeApp
//
//  Created by Agiss on 2022/11/10.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            Text("Other")
                .tabItem{
                    Tab.other.imageItem
                    Tab.other.textItem
                }
        }
    }
    
    struct MainTabView_Previews: PreviewProvider {
        static var previews: some View {
            MainTabView()
        }
    }
}
