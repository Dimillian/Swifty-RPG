//
//  AppEnvironment.swift
//  Swifty-RPG
//
//  Created by Thomas Ricouard on 31/10/2020.
//

import Foundation
import ComposableArchitecture

struct AppEnvironment {
    public var mainQueue: AnySchedulerOf<DispatchQueue>
}
