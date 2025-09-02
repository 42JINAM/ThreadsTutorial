//
//  ProfileThreadFilter.swift
//  ThreadsTutorial
//
//  Created by jinam on 9/2/25.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    var id: Int { return self.rawValue}
}
