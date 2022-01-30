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
    var content: some View {
        ZStack {
            Group {
              Capsule()
                .foregroundColor(.yellow)
              Text("Resize Me!")
                .fontWeight(.bold)
                .font(.system(size: 500))
                .minimumScaleFactor(0.01)
                .lineLimit(1)
            }
            .resizableView()
            Circle()
                .resizableView()
                .offset(CGSize(width: 50, height: 200))
        }
        
    }
    
    var body: some View {
        NavigationView {
            content
                .modifier(CardToolbar(currentModal: $currentModal))
                
        }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
            .environmentObject(ViewState())
    }
}
