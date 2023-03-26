//
//  RepoListViewModel.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/25.
//

import Foundation

class RepoListViewModel: ObservableObject {
    private let fetchReposUseCase: FetchReposUseCase
    
    @Published var state: RepoListState = .loading
    
    init(fetchReposUseCase: FetchReposUseCase) {
        self.fetchReposUseCase = fetchReposUseCase
    }
    
    func refresh() {
        Task {
            await load()
        }
    }
   
    @MainActor
    func load() async {
        do {
            state = .loading
            let repos = try await fetchReposUseCase.execute()
            state = .loaded(repos: repos)
        } catch {
            state = .failed(error: error)
        }
    }
}
