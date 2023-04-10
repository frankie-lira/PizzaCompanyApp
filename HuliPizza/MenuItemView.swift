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
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                //                    .foregroundColor(Color("Surf"))
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                //                    .frame(minWidth:200, maxWidth: 1000, maxHeight: 150)
                
                
                if let image = UIImage(named: "0x_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                    //                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .cornerRadius(15)
                    
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
                
            }
            .background(.linearGradient(colors:[ Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x: 8, y: 8)
            
            VStack(alignment: .leading) {
                
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
