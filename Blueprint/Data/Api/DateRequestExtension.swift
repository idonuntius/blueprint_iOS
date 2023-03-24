//
//  GithubApi.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import Foundation
import Alamofire

extension DataRequest {
    func publish<T>(_ type: T.Type) async throws -> T where T : Decodable {
        try await withCheckedThrowingContinuation { continuation in
            self.response { response in
                switch response.result {
                case .success(let data): do {
                    let decodedResponse = try JSONDecoder().decode(type, from: data!)
                    continuation.resume(returning: decodedResponse)
                } catch {
                    continuation.resume(throwing: error)
                }
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
