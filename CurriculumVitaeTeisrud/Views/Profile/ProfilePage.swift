//
//  ProfilePage.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI
import CoreLocation

struct ProfilePage: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            MapView(coordinate: profile.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: profile.image)
                .frame(width: 200, height: 200)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(profile.name)
                    .font(.title)
                Text("B.Sc Computer Science")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Divider()

                Text("About me")
                    .font(.title2)
                Text(profile.description)
            }
            .padding()
        }
        .navigationTitle("ProfilePage")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        ProfilePage(profile: modelData.profile[0])
            .environmentObject(modelData)
    }
}
