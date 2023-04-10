//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/9/23.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        VStack {
            HStack {
                Text("Your Order item \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline){
                Text(1, format: .number)
                Text(19.90, format: .currency(code: "USD"))
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
