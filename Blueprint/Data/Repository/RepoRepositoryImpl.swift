//
//  RepoRepositoryImpl.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import Foundation

class RepoRepositoryImpl: RepoRepository {
    private let githubApi: GithubApi

    init(githubApi: GithubApi) {
        self.githubApi = githubApi
    }

    func fetchRepos() async throws -> [Repo] {
        let response = try await githubApi.fetchRepos()
        return response.map { entity in
            return Repo(id: RepoId(value: entity.id),
                        fullName: entity.fullName,
                        url: URL(string: entity.htmlUrl)!,
                        stargazersCount: entity.stargazersCount,
                        forksCount: entity.forksCount,
                        watchersCount: entity.watchersCount,
                        description: entity.description)
        }
    }
}
