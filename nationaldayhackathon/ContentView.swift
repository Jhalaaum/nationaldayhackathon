//
//  ContentView.swift
//  nationaldayhackathon
//
//  Created by Jhala family on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HawkerFoodView()
                .tabItem {
                    Label("Hawker food", systemImage: "fork.knife")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
