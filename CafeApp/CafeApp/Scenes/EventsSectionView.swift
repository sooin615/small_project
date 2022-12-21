//
//  EventsSectionView.swift
//  CafeApp
//
//  Created by Agiss on 2022/12/20.
//

import SwiftUI

struct EventsSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16.0) {
                ForEach(Event.sample) { event in
                    EventsSectionItemView(event: event)
                }
            }.padding(.horizontal, 16.0)
        }
    }
}

struct EventsSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150.0)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}
struct EventsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventsSectionView()
    }
}
