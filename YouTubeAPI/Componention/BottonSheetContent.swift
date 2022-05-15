//
//  BottonSheerContent.swift
//  YouTubeAPI
//
//  Created by Dmitry Sokoltsov on 14.05.2022.
//

import SwiftUI

struct BottonSheetContent: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 3, style: .continuous)
                .frame(width: 40, height: 5)
                .padding(8)
            HStack {
                Button {
                    print("Prev video")
                } label: {
                    Image("Prev")
                }
                Button {
                    print("Pause video")
                } label: {
                    Image("Pause")
                }
                Button {
                    print("Next video")
                } label: {
                    Image("Next")
                }
                
            }
            
        }
    }
}

struct BottonSheerContent_Previews: PreviewProvider {
    static var previews: some View {
        BottonSheetContent()
    }
}
