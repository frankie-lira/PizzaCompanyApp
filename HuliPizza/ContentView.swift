//
//  ContentView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1,2,3,4,6]
    var showOrders: Bool = false
    var body: some View {
        
        VStack {
            HeaderView()
                .shadow(radius: 5)
            if showOrders{
                OrderView(orders: orders)
            }
            else{
                MenuItemView()
                    
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white ], startPoint: .topLeading, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



