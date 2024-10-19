//
//  CategoryItem.swift
//  Landmarks
//
//  Created by mac_user  on 9/10/24.
//

import SwiftUI

struct CategoryItem: View {
    
    var landMark: Landmark
    
    var body: some View {
        VStack (alignment: .leading) {
            landMark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landMark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landMark: ModelData().landmarks[0])
}
