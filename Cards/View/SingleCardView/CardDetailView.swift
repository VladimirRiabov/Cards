//
//  CardDetailView.swift
//  Cards
//
//  Created by Владимир Рябов on 29.01.2022.
//

import SwiftUI

struct CardDetailView: View {
    @State private var currentModal: CardModal?
    @EnvironmentObject var viewState: ViewState
    var body: some View {
        NavigationView {
            Color.yellow
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { viewState.showAllCards.toggle() }) {
                            Text("Done")
                        }
                    }
                    ToolbarItem(placement: .bottomBar) {
                     CardBottomToolbar(cardModal: $currentModal)
                   }
                    
            }
        }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
         .environmentObject(ViewState())
    }
}
