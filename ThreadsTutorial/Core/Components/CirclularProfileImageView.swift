//
//  CirclularProfileImageView.swift
//  ThreadsTutorial
//
//  Created by jinam on 8/27/25.
//

import SwiftUI

struct CirclularProfileImageView: View {
    var body: some View {
        Image("harry")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CirclularProfileImageView()
}
