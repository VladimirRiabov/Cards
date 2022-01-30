//
//  Transform.swift
//  Cards
//
//  Created by Владимир Рябов on 30.01.2022.
//

import SwiftUI

struct Transform {
    var size = CGSize(
     width: Settings.defaultElementSize.width,
     height: Settings.defaultElementSize.height)
  var rotation: Angle = .zero
  var offset: CGSize = .zero
}
