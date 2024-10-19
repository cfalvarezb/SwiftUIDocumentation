//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Periferia Dispostivos on 25/08/24.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            
            VStack (alignment: .leading) {
                Text(landmark.name)
                #if !os(watchOS)
                    Text(landmark.park)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                #endif
            }
            
            Spacer()
            
            if ( landmark.isFavorite ) {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        .padding(.vertical, 4)
    }
}


#Preview("Turtle Rock") {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

#Preview("Salmon") {
    let landmarks = ModelData().landmarks
    return LandmarkRow(landmark: landmarks[1])
}
