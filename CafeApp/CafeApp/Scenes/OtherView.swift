//
//  OtherView.swift
//  CafeApp
//
//  Created by Agiss on 2022/12/22.
//

import SwiftUI
import UIKit

struct OtherView: View {
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }
    
    var body: some View {
        
        NavigationView {
            List {
                Section {
                    Text("1")
                    Text("2")
                    Text("3")
                }
                
                Section {
                    Text("1")
                    Text("2")
                    Text("3")
                }
            }
                .listStyle(GroupedListStyle())
                .navigationTitle("Other")
                .toolbar {
                    NavigationLink(destination: Text("Destination"), label: {
                        Image(systemName: "gear")
                    })
                }
        }
    }
}

struct OtherView_Previes: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
