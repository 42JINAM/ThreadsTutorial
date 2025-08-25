//
//  MainIconImage.swift
//  ThreadsTutorial
//
//  Created by jinam on 8/25/25.
//

import SwiftUI

extension Image {
    func threadsMainIconStyle() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding()
    }
}
