//
//  ProfilePage.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI
import CoreLocation

struct ProfilePage: View {
    var body: some View {
        ScrollView {
            MapView(coordinate: CLLocationCoordinate2D(
                latitude: 58.13635,
                longitude: 7.99771))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: Image("BKT"))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Bjørn Kristian Teisrud")
                    .font(.title)
                Text("B.Sc Computer Science")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text("M.Sc Industrial Economics and Technology Management student")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Divider()

                Text("About me")
                    .font(.title2)
                Text("TODO: Information About me")
            }
            .padding()
        }
        .navigationTitle("ProfilePage")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
