//
//  ThirdSlider.swift
//  YouTubeAPI
//
//  Created by Dmitry Sokoltsov on 11.05.2022.
//

import SwiftUI

struct ThirdSlider: View {
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
                            .frame(width: 135, height: 135)
                            .aspectRatio(contentMode: .fill)
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

struct ThirdSlider_Previews: PreviewProvider {
    static var previews: some View {
        ThirdSlider()
    }
}
