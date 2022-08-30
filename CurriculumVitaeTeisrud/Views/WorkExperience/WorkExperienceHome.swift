//
//  WorkExperienceHome.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct WorkExperienceHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selectedWorkExperience: WorkExperience?
    
    var body: some View {
        NavigationView {
            List(selection: $selectedWorkExperience) {
                ForEach(modelData.workExperience, id: \.self) { workExperience in
                    NavigationLink {
                        WorkExperienceDetails(workExperience: workExperience)
                    } label: {
                        Text(workExperience.orgName)
                    }

                }
            }
            .listStyle(.inset)
            .navigationTitle("WorkExperience")
        }
    }
}

struct WorkExperienceHome_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        WorkExperienceHome()
            .environmentObject(modelData)
    }
}
