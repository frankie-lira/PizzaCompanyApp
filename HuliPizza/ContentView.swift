//
//  ContentView.swift
//  HuliPizza
//
//  Created by Francisco Lira on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            OrderView()
            
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



