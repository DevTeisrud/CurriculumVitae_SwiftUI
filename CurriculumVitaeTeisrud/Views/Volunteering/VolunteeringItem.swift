//
//  VolunteeringItem.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct VolunteeringItem: View {
    var body: some View {
        HStack{
            Image("IndokSorLogoShort")
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            VStack(alignment: .leading){
                Text("Event Manager")
                    .font(.title)
                Text("Indøk Sør")
                    .font(.subheadline)
            }
        }
        .frame(height: 160)
    }
}

struct VolunteeringItem_Previews: PreviewProvider {
    static var previews: some View {
        VolunteeringItem()
    }
}
