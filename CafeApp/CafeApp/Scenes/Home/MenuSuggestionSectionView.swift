//
//  MenuSuggestionSectionView.swift
//  CafeApp
//
//  Created by Agiss on 2022/12/20.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    var body: some View {
            VStack {
                Text("\(User.shared.username)님을 위한 추천메뉴")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 16.0)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(CoffeeMenu.sample) { Menu in
                            MenuSuggestionItemView(coffeeMenu: Menu)
                        }
                    }.padding(.horizontal, 16.0)
                    }
            }
        }
    }

struct MenuSuggestionItemView: View {
    let coffeeMenu: CoffeeMenu
    
    var body: some View {
        VStack {
            coffeeMenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100.0, height: 100.0)
            Text(coffeeMenu.name)
                .font(.caption)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView()
    }
}
