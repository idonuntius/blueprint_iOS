//
//  Repo.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import Foundation

public struct Repo: Equatable, Identifiable {
    public let id: RepoId
    public let fullName: String
    public let url: URL
    public let stargazersCount: Int
    public let forksCount: Int
    public let watchersCount: Int
    public let description: String?
    
    init(id: RepoId, fullName: String, url: URL, stargazersCount: Int, forksCount: Int, watchersCount: Int, description: String?) {
        self.id = id
        self.fullName = fullName
        self.url = url
        self.stargazersCount = stargazersCount
        self.forksCount = forksCount
        self.watchersCount = watchersCount
        self.description = description
    }
}
