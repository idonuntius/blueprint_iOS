//
//  Container.swift
//  Blueprint
//
//  Created by Natsuki Idota on 2023/03/24.
//

import Swinject

let container: Container = {
    let container = Container()
    Assembler(container: container).apply(assemblies: [ViewModelAssembly(),
                                                       UseCaseAssembly(),
                                                       RepositoryAssembly(),
                                                       ApiAssembly()])
    return container
}()

var resolver: (() -> Resolver)!
