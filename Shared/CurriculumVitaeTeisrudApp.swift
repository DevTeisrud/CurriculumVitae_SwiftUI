//
//  CurriculumVitaeTeisrudApp.swift
//  Shared
//
//  Created by Bjørn Kristian Teisrud on 10/09/2022.
//

import SwiftUI

@main
struct CurriculumVitaeTeisrudApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)

        }
    }
}
