//
//  MenuView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/9/23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView{
            ForEach(1...25, id: \.self){ item in //for loop to lay out all items 1-5
                
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
