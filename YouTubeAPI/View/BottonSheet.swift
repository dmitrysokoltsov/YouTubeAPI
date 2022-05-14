//
//  BotttonSheet.swift
//  YouTubeAPI
//
//  Created by Dmitry Sokoltsov on 14.05.2022.
//

import SwiftUI

struct BottonSheet: View {
    @State var translation: CGSize = .zero
    @State var offsetY: CGFloat = 0
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                BottonSheetContent()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .offset(y: translation.height + offsetY)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            translation = value.translation
                        }
                        .onEnded { value in
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.7)) {
                                let snap = translation.height + offsetY
                                let quarter = proxy.size.height / 4
                                
                                if snap > quarter && snap < quarter*3 {
                                    offsetY = quarter*2
                                } else if snap > quarter*3 {
                                    offsetY = quarter*3 + 100
                                } else {
                                    offsetY = 0
                                }
                                translation = .zero
                            }
                        }
                )
            ignoresSafeArea(edges: .bottom)
        }
    }
}

struct BottonSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottonSheet()
            .background(.blue)
            .previewInterfaceOrientation(.portrait)
    }
}
