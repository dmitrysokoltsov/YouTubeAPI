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
            Image("thre")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 339, height: 180)
        }
    }
}

struct BottonSheerContent_Previews: PreviewProvider {
    static var previews: some View {
        BottonSheetContent()
    }
}
