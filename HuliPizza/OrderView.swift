//
//  OrderView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/9/23.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int]
    
    var body: some View {
        ZStack(alignment: .top){
            
           
            
            
            ScrollView{
                ForEach(orders, id: \.self ){order in
                    OrderRowView(order: order)
                        .padding(4)
                        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                        .padding(.bottom, 5)
                        .padding([.leading, .trailing], 7)
                }
            }.padding(.top, 70)
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                Label{
                    Text(59.99, format: .currency(code: "USD"))
                }
            icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            }
            .padding()
            .background(.ultraThinMaterial)
        }
        .padding()
        .background(Color("Surf"))
        
    }
}


struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: [1,2,3,4,6])
    }
}
