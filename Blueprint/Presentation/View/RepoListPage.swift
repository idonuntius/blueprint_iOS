//
//  RepoListPage.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/25.
//

import SwiftUI

struct RepoListPage: View {
    let state: RepoListState
    let onRefresh: () -> Void
    
    init(state: RepoListState, onRefresh: @escaping () -> Void) {
        self.state = state
        self.onRefresh = onRefresh
    }
    
    var body: some View {
       NavigationView {
            Group {
                switch state {
                case .loading:
                    ProgressView()
                case .loaded(let repos):
                    List {
                        ForEach(repos) { repo in
                            RepoItemView(repo: repo)
                        }
                    }
                    .refreshable {
                        onRefresh()
                    }
                case .failed(let error):
                    Text("error - \(error.localizedDescription)")
                }
            }
            .navigationTitle("リスト")
        }
    }
}

struct RepoListPage_Previews: PreviewProvider {
    static var previews: some View {
        RepoListPage(state: .loaded(repos: [Repo(id: RepoId(value: 1),
                                                 fullName: "Repo1",
                                                 url: URL(string: "https://google.com")!,
                                                 stargazersCount: 3,
                                                 forksCount: 5,
                                                 watchersCount: 8,
                                                 description: "description"),
                                            Repo(id: RepoId(value: 2),
                                                 fullName: "Repo2",
                                                 url: URL(string: "https://google.com")!,
                                                 stargazersCount: 4,
                                                 forksCount: 6,
                                                 watchersCount: 9,
                                                 description: "description")]),
                     onRefresh: {})
    }
}
