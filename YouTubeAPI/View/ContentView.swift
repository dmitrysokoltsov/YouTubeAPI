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
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color("AccentColor").ignoresSafeArea()
                
                VStack {
                    MainSlider()
                    SecondSlider()
                    ThirdSlider()
                        
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
