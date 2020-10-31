//
//  PlayerReducer.swift
//  Swifty-RPG
//
//  Created by Thomas Ricouard on 31/10/2020.
//

import Foundation
import ComposableArchitecture

let playerReducer = Reducer<PlayerState, PlayerAction, PlayerEnvironment> {state, action, _ in
    switch action {
    case let .newPlayer(name):
        state.player = Player(name: name)
        return .none
    }
}
