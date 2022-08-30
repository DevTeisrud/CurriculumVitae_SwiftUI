//
//  EducationsDetails.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct EducationsDetails: View {
    @EnvironmentObject var modelData: ModelData
    var education: Educations
    
    var body: some View {
        ScrollView {
            MapView(coordinate: education.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: education.image)
                .frame(width: 200, height: 200)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(education.role)
                    .font(.title)
                Text(education.orgName)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Divider()

                Text("About \(education.orgName)")
                    .font(.title2)
                Text(education.description)
            }
            .padding()
        }
        .navigationTitle(education.orgName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EducationsDetails_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        EducationsDetails(education: modelData.educations[0])
            .environmentObject(modelData)
    }
}
