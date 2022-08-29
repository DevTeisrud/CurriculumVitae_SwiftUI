//
//  ContentView.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .education

    enum Tab {
        case education
        case jobb
        case friviligArbeid
        case me
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Education")
                .tabItem {
                    Label("Education", systemImage: "books.vertical")
                }
                .tag(Tab.education)

            Text("jobb")
                .tabItem {
                    Label("jobb", systemImage: "star")
                }
                .tag(Tab.jobb)
            
            Text("friviligArbeid")
                .tabItem {
                    Label("friviligArbeid", systemImage: "star")
                }
                .tag(Tab.friviligArbeid)
            
            ProfilePage()
                .tabItem {
                    Label("me", systemImage: "person")
                }
                .tag(Tab.me)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
