//
//  Operators.swift
//  Cards
//
//  Created by Владимир Рябов on 30.01.2022.
//


import SwiftUI

func + (left: CGSize, right: CGSize) -> CGSize {
  CGSize(
    width: left.width + right.width,
    height: left.height + right.height)
}

func * (left: CGSize, right: CGFloat) -> CGSize {
  CGSize(
    width: left.width * right,
    height: left.height * right
  )
}
