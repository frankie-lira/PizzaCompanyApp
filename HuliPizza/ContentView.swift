//
//  ContentView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4,6]
    var body: some View {
        
        VStack {
            ZStack {
                
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("Huli Pizza Company")
                    .background()
            }
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
                    HStack(alignment: .firstTextBaseline){
                        Text("Your Order item \(order)")
                        Spacer()
                        Text("$00.00")
                    }
                }
                
                
                VStack {
                    if let image = UIImage(named: "0_lg"){
                        Image(uiImage: image)
                    } else {
                        Image("surfboard_lg")
                    }
                    Text("Margherita")
                    Text("Description")
                }
                
                ScrollView{
                    ForEach(1...25, id: \.self){ item in //for loop to lay out all items 1-5
                        HStack(alignment: .top, spacing: 15) {
                            if let image = UIImage(named: "\(item)_sm"){
                                Image(uiImage: image)
                            } else {
                                Image("surfboard_sm")
                            }
                            VStack(alignment: .leading) {
                                Text("Margherita")
                                Text("Description")
                            }
                        }
                    }
                }
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
}
