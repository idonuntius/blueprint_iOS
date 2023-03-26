//
//  RepoListState.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/25.
//

enum RepoListState {
    case loading
    case loaded(repos: [Repo])
    case failed(error: Error)
}
