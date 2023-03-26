//
//  GithubApi.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import Foundation
import Alamofire

public struct GithubApi {
    private let baseApiUrl = URL(string: "https://api.github.com")!
    
    public func fetchRepos() async throws -> [RepoEntity] {
        let urlComponents = URLComponents(url: baseApiUrl.appendingPathComponent("/orgs/apple/repos"),
                                          resolvingAgainstBaseURL: true)!
        return try await AF.request(urlComponents).publish([RepoEntity].self)
    }
}
