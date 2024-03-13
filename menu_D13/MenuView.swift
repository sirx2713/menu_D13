//
//  ContentView.swift
//  menu_D13
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/03.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        TabView{
            menuItems()
                .tabItem {
                    Image(systemName: "menucard")
                }
            AboutView()
                .tabItem {
                    Image(systemName: "info.circle")
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo.circle")
                }
        }
    }
}

#Preview {
    MenuView()
}
