//
//  CardStore.swift
//  Cards
//
//  Created by Владимир Рябов on 31.01.2022.
//

import SwiftUI


class CardStore: ObservableObject {
  @Published var cards: [Card] = []
    
    
    init(defaultData: Bool = false) {
      if defaultData {
        cards = initialCards
      }
    }
}
