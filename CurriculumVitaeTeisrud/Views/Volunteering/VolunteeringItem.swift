//
//  VolunteeringItem.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct VolunteeringItem: View {
    var volunteering: Volunteering
    
    var body: some View {
        HStack{
            CircleImage(image: volunteering.image)
                .frame(width: 100, height: 100)
            VStack(alignment: .leading){
                Text(volunteering.role)
                    .font(.title)
                Text(volunteering.orgName)
                    .font(.subheadline)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct VolunteeringItem_Previews: PreviewProvider {
    static var previews: some View {
        VolunteeringItem(volunteering: ModelData().volunteering[0])
    }
}
