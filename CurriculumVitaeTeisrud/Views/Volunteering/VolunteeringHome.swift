//
//  VolunteeringHome.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct VolunteeringHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selectedVoluteer: Volunteering?
    
    var body: some View {
        NavigationView {
            List(selection: $selectedVoluteer) {
                ForEach(modelData.volunteering, id: \.self) { volunteer in
                    NavigationLink {
                        VolunteeringDetails(volunteering: volunteer)
                    } label: {
                        VolunteeringItem(volunteering: volunteer)
                    }

                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Volunteering")
        }
    }
}

struct VolunteeringHome_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        VolunteeringHome()
            .environmentObject(modelData)
    }
}
