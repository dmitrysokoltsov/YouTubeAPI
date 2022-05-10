//
//  SwiftUIView.swift
//  YouTubeAPI
//
//  Created by Dmitry Sokoltsov on 10.05.2022.
//

import SwiftUI

struct MainSlider: View {
    
    public let timer = Timer.publish(every:3,on:.main,in:.common).autoconnect()
    @State private var selection = 0
    
    let album = ["one","two","thre","four"]
    var body: some View {
        TabView(selection : $selection){
            
            ForEach(0..<4){ i in
                Image("\(album[i])")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            .onReceive(timer, perform: { _ in
                withAnimation{
                    print("selection is",selection)
                    selection = selection < 4 ? selection + 1 : 0
                }
            })
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainSlider()
    }
}
