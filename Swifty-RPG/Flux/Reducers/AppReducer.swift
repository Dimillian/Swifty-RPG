//
//  AppReducer.swift
//  Swifty-RPG
//
//  Created by Thomas Ricouard on 31/10/2020.
//

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment>.combine(
    Reducer { state, action, _ in
        return .none
    },
    playerReducer.pullback(
        state: \.playerState,
        action: /AppAction.player,
        environment: { _ in PlayerEnvironment() }
    )
)
