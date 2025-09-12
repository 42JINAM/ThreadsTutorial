//
//  ContentView.swift
//  ThreadsTutorial
//
//  Created by jinam on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ThreadsTabView()
            } else {
                LoginView()
            }
        }

    }
}

#Preview {
    ContentView()
}
