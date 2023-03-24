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
    
    public func getRepos() async throws -> [RepoEntity] {
        var urlComponents = URLComponents(url: baseApiUrl.appendingPathComponent("/search/repositories"), resolvingAgainstBaseURL: true)!
        urlComponents.queryItems = [
            URLQueryItem(name: "q", value: "swift"),
            URLQueryItem(name: "sort", value: "stars"),
        ]
        return try await AF.request(urlComponents)
            .publish([RepoEntity].self)
    }
}
