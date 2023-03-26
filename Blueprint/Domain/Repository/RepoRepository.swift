//
//  RepoRepository.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import Foundation

protocol RepoRepository {
    func fetchRepos() async throws -> [Repo]
}
