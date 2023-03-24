//
//  RepoEntity.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

public struct RepoEntity: Codable {
    public let id: Int
    public let fullName: String
    public let htmlUrl: String
    public let stargazersCount: Int
    public let forksCount: Int
    public let watchersCount: Int
    public let description: String?


    enum CodingKeys: String, CodingKey {
        case id = "id"
        case fullName = "full_name"
        case htmlUrl = "html_url"
        case stargazersCount = "stargazers_count"
        case forksCount = "forks_count"
        case watchersCount = "watchers_count"
        case description = "description"
   }
}
