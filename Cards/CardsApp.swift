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
    @StateObject var store = CardStore(defaultData: true)
    var body: some Scene {
        WindowGroup {
            VStack {
                CardsView()
                 .environmentObject(viewState)
                 .environmentObject(store)
//                ResizableView()
            }
            
        }
    }
}
