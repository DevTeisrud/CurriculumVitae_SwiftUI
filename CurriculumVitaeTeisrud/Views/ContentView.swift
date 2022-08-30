//
//  ContentView.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var modelData = ModelData()
    @State private var selection: Tab = .education

    enum Tab {
        case education
        case workExperience
        case volunteering
        case me
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Education")
                .tabItem {
                    Label("Education", systemImage: "books.vertical")
                }
                .tag(Tab.education)

            Text("Work Experience")
                .tabItem {
                    Label("Work Experience", systemImage: "star")
                }
                .tag(Tab.workExperience)
            
            VolunteeringDetails()
                .tabItem {
                    Label("Volunteering", systemImage: "star")
                }
                .tag(Tab.volunteering)
            
            ProfilePage(profile: modelData.profile[0])
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
