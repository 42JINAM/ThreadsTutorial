//
//  UserCell.swift
//  ThreadsTutorial
//
//  Created by jinam on 8/27/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CirclularProfileImageView()
            VStack{
                Text("harry")
                    .fontWeight(.semibold)
                Text("harry potter")
            }
            .font(.footnote)
            Spacer()
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(
                            Color(.systemGray4),
                            lineWidth: 1
                        )
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
