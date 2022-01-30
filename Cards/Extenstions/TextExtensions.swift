//
//  TextExtensions.swift
//  Cards
//
//  Created by Владимир Рябов on 30.01.2022.
//

import SwiftUI

extension Text {
  func scalableText(font: Font = Font.system(size: 1000)) -> some View {
    self
      .font(font)
      .minimumScaleFactor(0.01)
      .lineLimit(1)
  }
}
