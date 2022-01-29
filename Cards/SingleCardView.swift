//
//  SingleCardView.swift
//  Cards
//
//  Created by Владимир Рябов on 29.01.2022.
//

import SwiftUI

struct SingleCardView: View {
    
    @EnvironmentObject var viewState: ViewState
    
    var body: some View {
        NavigationView {
            CardDetailView()
                .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView()
            .environmentObject(ViewState())
    }
}


