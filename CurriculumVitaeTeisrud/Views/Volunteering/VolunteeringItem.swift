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
            ZStack{
                Color.white
                    .ignoresSafeArea()
                volunteering.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(width: 70, height: 70)
            .cornerRadius(10)
            VStack(alignment: .leading){
                Text(volunteering.role)
                    .font(.title)
                Text(volunteering.orgName)
                    .font(.subheadline)
            }
            .padding(.horizontal)
            Spacer()
        }
        .padding()
    }
}

struct VolunteeringItem_Previews: PreviewProvider {
    static var previews: some View {
        VolunteeringItem(volunteering: ModelData().volunteering[0])
    }
}
