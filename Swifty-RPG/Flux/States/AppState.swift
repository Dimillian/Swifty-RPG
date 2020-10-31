//
//  AppState.swift
//  Swifty-RPG
//
//  Created by Thomas Ricouard on 31/10/2020.
//

import Foundation

struct AppState: Equatable {
    var playerState: PlayerState = PlayerState(player: Player(name: "Default Player"))
}
