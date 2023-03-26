//
//  FetchReposUseCaseImpl.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/25.
//

import Foundation

class FetchReposUseCaseImpl: FetchReposUseCase {
    private let repoRepository: RepoRepository
    
    init(repoRepository: RepoRepository) {
        self.repoRepository = repoRepository
    }

    func execute() async throws -> [Repo] {
        return try await repoRepository.fetchRepos()
    }
}
