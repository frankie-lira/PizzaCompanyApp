//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/9/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            
            Image("surfBanner")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
            Text("Huli Pizza Company")
                .font(.custom("Georgia", size: 30, relativeTo: .title))
//                .foregroundColor(Color("Sky"))
                .foregroundStyle(.regularMaterial)
                .fontWeight(.semibold)
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
