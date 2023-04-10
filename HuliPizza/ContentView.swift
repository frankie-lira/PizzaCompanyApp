//
//  ContentView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1,2,3,4,6]
    var body: some View {
        
        VStack {
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



