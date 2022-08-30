//
//  CurriculumVitaeTeisrud_iPadOSApp.swift
//  CurriculumVitaeTeisrud_iPadOS
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

@main
struct CurriculumVitaeTeisrud_iPadOSApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)

        }
    }
}
