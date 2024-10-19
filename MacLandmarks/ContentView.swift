//
//  ContentView.swift
//  MacLandmarks
//
//  Created by mac_user  on 17/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
                    .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
            .environment(ModelData())
}
