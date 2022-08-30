//
//  WorkExperienceItem.swift
//  CurriculumVitaeTeisrud
//
//  Created by Bjørn Kristian Teisrud on 30/08/2022.
//

import SwiftUI

struct WorkExperienceItem: View {
    var workExperience: WorkExperience
    
    var body: some View {
        HStack{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                workExperience.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(width: 70, height: 70)
            .cornerRadius(10)
            VStack(alignment: .leading){
                Text(workExperience.role)
                    .font(.title)
                Text(workExperience.orgName)
                    .font(.subheadline)
            }
            .padding(.horizontal)
            Spacer()
        }
        .padding()
    }
}

struct WorkExperienceItem_Previews: PreviewProvider {
    static var previews: some View {
        WorkExperienceItem(workExperience: ModelData().workExperience[0])
    }
}
