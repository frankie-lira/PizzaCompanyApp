//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/9/23.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                //                    .cornerRadius(10)
            } else {
                Image("surfboard_lg")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Surf"))
                    .padding(.leading)
                    .background(.linearGradient(colors:[ Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare dignissim nisl nec dignissim. Aliquam a molestie nulla. Nam efficitur convallis ante. Sed turpis dui, pulvinar at dolor ut, placerat finibus mauris. Vivamus vitae sollicitudin urna, auctor dignissim erat. Fusce fringilla vulputate lacus non pretium. Proin ullamcorper, nibh quis imperdiet.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
