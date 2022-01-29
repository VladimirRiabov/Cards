//
//  CardsApp.swift
//  Cards
//
//  Created by Владимир Рябов on 29.01.2022.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var viewState = ViewState()
    var body: some Scene {
        WindowGroup {
            CardsView()
             .environmentObject(viewState)
        }
    }
}
