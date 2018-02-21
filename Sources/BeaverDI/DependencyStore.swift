//
//  DependencyStore.swift
//  BeaverDI
//
//  Created by Théophane Rupin on 2/20/18.
//

import Foundation

public protocol DependencyStore {
    
    func register<S>(_ serviceType: S.Type, scope: Scope, builder: @escaping (DependencyResolver) -> S)
    
    func register<S, P1>(_ serviceType: S.Type, scope: Scope, builder: @escaping (DependencyResolver, P1) -> S)

    func register<S, P1, P2>(_ serviceType: S.Type, scope: Scope, builder: @escaping (DependencyResolver, P1, P2) -> S)

    func register<S, P1, P2, P3>(_ serviceType: S.Type, scope: Scope, builder: @escaping (DependencyResolver, P1, P2, P3) -> S)

    func register<S, P1, P2, P3, P4>(_ serviceType: S.Type, scope: Scope, builder: @escaping (DependencyResolver, P1, P2, P3, P4) -> S)
}
