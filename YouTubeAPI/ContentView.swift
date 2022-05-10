//
//  ContentView.swift
//  YouTubeAPI
//
//  Created by Dmitry Sokoltsov on 10.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    public let timer = Timer.publish(every:3,on:.main,in:.common).autoconnect()
    @State private var selection = 0
    
    let album = ["one","two","thre","four"]
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color("AccentColor").ignoresSafeArea()
                
                VStack {
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
                
                    Text("Playlist name")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                        
                        
                }
                
            }
            .navigationTitle("YouTube API")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
