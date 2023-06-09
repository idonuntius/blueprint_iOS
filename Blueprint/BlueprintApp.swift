//
//  BlueprintApp.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import SwiftUI

@main
struct BlueprintApp: App {
    init() {
        resolver = { container }
    }
    
    var body: some Scene {
        WindowGroup {
            RepoListBuilder()
        }
    }
}
