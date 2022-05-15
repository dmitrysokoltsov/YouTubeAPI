//
//  ContentView.swift
//  YouTubeAPI
//
//  Created by Dmitry Sokoltsov on 10.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color("AccentColor").ignoresSafeArea()
                
                VStack {
                    MainSlider()
                    SecondSlider()
                    ThirdSlider()
                    
                }
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                    }
                }

                if show {
                    BottomSheet()
                        .transition(.move(edge: .bottom))
                        .zIndex(1)
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
