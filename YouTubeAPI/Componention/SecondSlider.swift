//
//  SecondSlider.swift
//  YouTubeAPI
//
//  Created by Dmitry Sokoltsov on 11.05.2022.
//

import SwiftUI

struct SecondSlider: View {
    
    let album = ["one","two","thre","four"]
    var playlistName = "Pop music"
    var clipName = "Bob Marley"
    var viewCount = "1 300 000 Просмотра"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(playlistName).bold().font(.system(size: 23))
                .foregroundColor(.white)
                
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<4) { i in
                        Image(album[i])
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 180, height: 70)
                            .aspectRatio(contentMode: .fit)
                }
                        
                }
            }
            Text(clipName).font(.system(size: 17))
                .foregroundColor(.white)
            Text(viewCount).font(.system(size: 12))
                .foregroundColor(.gray)
        }
        .padding(.leading, 20.0)
        .padding(.bottom, 50)
    }
}

struct SecondSlider_Previews: PreviewProvider {
    static var previews: some View {
        SecondSlider()
    }
}
