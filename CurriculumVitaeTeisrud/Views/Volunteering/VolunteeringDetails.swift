//
//  VolunteeringDetails.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI
import CoreLocation

struct VolunteeringDetails: View {
    var body: some View {
        ScrollView {
            MapView(coordinate: CLLocationCoordinate2D(
                latitude: 58.33397,
                longitude: 8.57768))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: Image("IndokSorLogoShort"))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Event Manager")
                    .font(.title)
                Text("Indøk Sør")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Divider()

                Text("About Indøk Sør")
                    .font(.title2)
                Text("TODO: Information About Indøk Sør")
            }
            .padding()
        }
        .navigationTitle("Indøk Sør")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VolunteeringDetails_Previews: PreviewProvider {
    static var previews: some View {
        VolunteeringDetails()
    }
}
