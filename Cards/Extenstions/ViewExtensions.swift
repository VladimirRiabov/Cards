//
//  ViewExtensions.swift
//  Cards
//
//  Created by Владимир Рябов on 30.01.2022.
//

import SwiftUI
extension View {
  func resizableView() -> some View {
    return modifier(ResizableView())
  }
}
