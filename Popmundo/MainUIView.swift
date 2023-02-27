//
//  MainUIView.swift
//  Popmundo
//
//  Created by İbrahım Arda Arslan on 23.02.2023.
//

import SwiftUI

struct MainUIView: View {
    @State private var tabBarHeight: CGFloat = 0
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeUIView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)

            ArtistUIView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Artist")
                }
                .tag(1)

            PlaceView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Place")
                }
                .tag(2)

            EventsView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Events")
                }
                .tag(3)

            StatisticView()
                .tabItem {
                    Image(systemName: "guitars")
                    Text("Group")
                }
                .tag(3)

        }
        .tabViewStyle(DefaultTabViewStyle())
        .onAppear {
//            let tabBar = self.appearance()
//            tabBarHeight = tabBar.bounds.height
//            ArtistUIView(tabBarHeight: $tabBarHeight)
        }
        .accentColor(.red)
    }
}

