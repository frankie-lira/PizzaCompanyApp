//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/9/23.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int = 1
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Text("Your Order item \(order)")
            Spacer()
            Text("$00.00")
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
    }
}