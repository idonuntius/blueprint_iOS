//
//  RepoId.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import Foundation

public struct RepoId: Equatable, Hashable {
    public let value: Int

    init(value: Int) {
        self.value = value
    }
}
