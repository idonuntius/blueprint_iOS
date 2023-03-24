//
//  ApiAssembly.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import Swinject

public struct ApiAssembly: Assembly {
    public init() {
    }
    
    public func assemble(container: Container) {
        container.register(GithubApi.self) { _ in
            GithubApi()
        }.inObjectScope(.container)
    }
}
