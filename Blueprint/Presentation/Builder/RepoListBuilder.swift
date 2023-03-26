//
//  RepoListBuilder.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/25.
//

import SwiftUI

struct RepoListBuilder: View {
    @ObservedObject
    private var viewModel: RepoListViewModel
    
    init() {
        self.viewModel = resolver().resolve(RepoListViewModel.self)!
    }
    
    var body: some View {
        RepoListPage(
            state: viewModel.state,
            onRefresh: viewModel.refresh
        ).task {
            await viewModel.load()
        }
    }
}
