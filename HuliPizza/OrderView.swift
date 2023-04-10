//
//  OrderView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/9/23.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int] = [1,2,3,4,6]
    
    var body: some View {
        VStack{
            HeaderView()
            Label{
                Text(59.99, format: .currency(code: "USD"))
            }
        icon: {
            Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
        }
            HStack {
                //                Label("Cart", systemImage: "cart")
                Text("Order Pizza")
                    .font(.title)
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
            }
            
            ScrollView{
                ForEach(orders, id: \.self ){order in
                }
            }
        }
    }
}


struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
