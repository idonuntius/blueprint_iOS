//
//  UseCaseAssembly.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/25.
//

import Foundation
import Swinject

public struct UseCaseAssembly: Assembly {
    public init() {
    }
    
    public func assemble(container: Container) {
        container.register(FetchReposUseCase.self) { resolver in
            FetchReposUseCaseImpl(repoRepository: resolver.resolve(RepoRepository.self)!)
        }.inObjectScope(.container)
    }
}
