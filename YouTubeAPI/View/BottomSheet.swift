//
//  BotttonSheet.swift
//  YouTubeAPI
//
//  Created by Dmitry Sokoltsov on 14.05.2022.
//

import SwiftUI

struct BottomSheet: View {
    @State var translation: CGSize = .zero
    @State var offsetY: CGFloat = 0
    
    private let backgroundGradient = Gradient(colors: [.init("ColorTop"), .init("ColorBottom")])
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
            BottonSheetContent()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: backgroundGradient, startPoint: .top, endPoint: .bottom))
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .offset(y: translation.height + offsetY)
            .gesture(DragGesture()
                .onChanged { value in
                    translation = value.translation
                }
                .onEnded { value in
                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.7)) {
                        let snap = translation.height + offsetY
                        let quarter = proxy.size.height / 4
                        
                        if snap > quarter && snap < quarter*4 {
                            offsetY = quarter*3 + 150
                        } else {
                            offsetY = 0
                        }
                        
                    translation = .zero
                    }
                }
            )
            .ignoresSafeArea(edges: .bottom)
        }
        
    }
}

struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet()
            .background(.blue)
    }
}
