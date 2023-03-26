//
//  RepoItemView.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/26.
//

import SwiftUI

struct RepoItemView: View {
    let repo: Repo
    
    init(repo: Repo) {
        self.repo = repo
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(repo.fullName)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.bottom, 2)
            if repo.description != nil {
                Text(repo.description!)
                    .font(.body)
            }
            HStack(alignment: .center) {
                Image(systemName: "star")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                Text(repo.stargazersCount.description)
                    .font(.caption)
                    .padding(.trailing, 4)
                Image(systemName: "arrow.up")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                Text(repo.forksCount.description)
                    .font(.caption)
                    .padding(.trailing, 4)
                Image(systemName: "eye")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                Text(repo.watchersCount.description)
                    .font(.caption)
            }
        }
    }
}

struct RepoItemView_Previews: PreviewProvider {
    static var previews: some View {
        RepoItemView(
            repo: Repo(id: RepoId(value: 1),
                       fullName: "Repo1",
                       url: URL(string: "https://google.com")!,
                       stargazersCount: 3,
                       forksCount: 5,
                       watchersCount: 8,
                       description: "description")
        )
    }
}
