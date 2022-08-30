//
//  VolunteeringHome.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct VolunteeringHome: View {
    var body: some View {
        NavigationView {
            List {
                VolunteeringItem()
                    .listRowInsets(EdgeInsets())
                VolunteeringItem()
                    .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Volunteering")
        }
    }
}

struct VolunteeringHome_Previews: PreviewProvider {
    static var previews: some View {
        VolunteeringHome()
    }
}
