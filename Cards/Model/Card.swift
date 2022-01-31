//
//  Card.swift
//  Cards
//
//  Created by Владимир Рябов on 31.01.2022.
//

import SwiftUI
struct Card: Identifiable {
  let id = UUID()
  var backgroundColor: Color = .yellow
  var elements: [CardElement] = []
}
