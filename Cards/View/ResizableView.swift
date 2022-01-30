//
//  ResizableView.swift
//  Cards
//
//  Created by Владимир Рябов on 30.01.2022.
//

import SwiftUI

struct ResizableView: View {
    @State private var transform = Transform()
    @State private var previousOffset: CGSize = .zero
    @State private var previousRotation: Angle = .zero
    // 1
    private let content = RoundedRectangle(cornerRadius: 30.0)
    private let color = Color.red
    var body: some View {
        let rotationGesture = RotationGesture()
            .onChanged { rotation in
                transform.rotation += rotation - previousRotation
                previousRotation = rotation
            }
            .onEnded { _ in
                previousRotation = .zero
            }
        let dragGesture = DragGesture()
            .onChanged { value in
                transform.offset = value.translation + previousOffset
            }
            .onEnded { _ in
                previousOffset = transform.offset
            }
        // 2
        content
            .frame(
                width: transform.size.width,
                height: transform.size.height)
            .foregroundColor(color)
            
            .rotationEffect(transform.rotation)
            .offset(transform.offset)
           .gesture(dragGesture)
           .gesture(rotationGesture)
    }
    
}

struct ResizableView_Previews: PreviewProvider {
    static var previews: some View {
        ResizableView()
    }
}
