//
//  FetchReposUseCase.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/25.
//

import Foundation

protocol FetchReposUseCase {
    func execute() async throws -> [Repo]
}
