//
//  EducationsHome.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct EducationsHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selectededucation: Educations?
    
    var body: some View {
        NavigationView {
            List(selection: $selectededucation) {
                ForEach(modelData.educations, id: \.self) { education in
                    NavigationLink {
                        EducationsDetails(education: education)
                    } label: {
                        Text(education.orgName)
                    }

                }
            }
            .listStyle(.inset)
            .navigationTitle("Educations")
        }
    }
}

struct EducationsHome_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        EducationsHome()
            .environmentObject(modelData)
    }
}
