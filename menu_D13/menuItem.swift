//
//  menuItems.swift
//  menu_D13
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/03.
//

import SwiftUI

struct menuItems: View {
    
    @State var itemsMenu: [menuItem] = [
        menuItem(name: "Onigiri", price: "1.99", imageName: "onigiri"),
        menuItem(name: "Meguro Sushi", price: "5.99", imageName: "meguro-sushi"),
        menuItem(name: "Tako Sushi", price: "4.99", imageName: "tako-sushi"),
        menuItem(name: "Avocado Maki", price: "2.99", imageName: "avocado-maki"),
        menuItem(name: "Tobiko Spicy Maki", price: "4.99", imageName: "tobiko-spicy-maki"),
        menuItem(name: "Salmon Sushi", price: "4.99", imageName: "salmon-sushi"),
        menuItem(name: "Hamachi Sushi", price: "6.99", imageName: "hamachi-sushi"),
        menuItem(name: "Kani Sushi", price: "3.99", imageName: "kani-sushi"),
        menuItem(name: "Tamago Sushi", price: "3.99", imageName: "tamago-sushi"),
        menuItem(name: "California Roll", price: "3.99", imageName: "california-roll"),
        menuItem(name: "Shrimp Sushi", price: "3.99", imageName: "shrimp-sushi"),
        menuItem(name: "Ikura Sushi", price: "5.99", imageName: "ikura-sushi")]
    
    
    
    var body: some View {
        List(itemsMenu){item in
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(item.name).bold()
                Spacer()
                Text("$" + String(item.price))
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1))
            
        }.listStyle(.plain)
    }
}

#Preview {
    menuItems()
}
