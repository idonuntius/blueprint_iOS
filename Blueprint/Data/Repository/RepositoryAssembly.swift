//
//  RepositoryAssembly.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/25.
//

import Foundation
import Swinject

public struct RepositoryAssembly: Assembly {
    public init() {
    }
    
    public func assemble(container: Container) {
        container.register(RepoRepository.self) { resolver in
            RepoRepositoryImpl(githubApi: resolver.resolve(GithubApi.self)!)
        }.inObjectScope(.container)
    }
}
