//
//  Swifty_RPGApp.swift
//  Swifty-RPG
//
//  Created by Thomas Ricouard on 31/10/2020.
//

import SwiftUI
import ComposableArchitecture

@main
struct Swifty_RPGApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(store: Store(initialState: AppState(),
                                  reducer: appReducer,
                                  environment: AppEnvironment(mainQueue: DispatchQueue.main.eraseToAnyScheduler())))
        }
    }
}

struct MainView: View {
    let store: Store<AppState, AppAction>
    
    var body: some View {
        WithViewStore(store) { store in
            Text("Player name: \(store.playerState.player.name)")
            Button("Update name") {
                store.send(.player(.newPlayer(name: "Hello world")))
            }
        }
    }
}
