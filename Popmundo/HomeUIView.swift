//
//  ContentView.swift
//  Popmundo
//
//  Created by İbrahım Arda Arslan on 23.02.2023.
//

import SwiftUI

struct HomeUIView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                EventsView()
                PlaceView()
                StatisticView()
                ArtistView()
            }
            //MainTabView()
        }
    }
}

// Events
struct EventsView: View {
    var body: some View {
        VStack {
            Image(systemName: "star")
                .imageScale(.large)
                .foregroundColor(.yellow)
                .padding()
            Text("Events")
        }
        .frame(width: UIScreen.main.bounds.width * 0.7,
               height: 200)
        .background(Color.gray)
        .cornerRadius(16)
        .padding()
    }
}

// Places
struct PlaceView: View {
    var body: some View {
        VStack {
            Image(systemName: "mappin.and.ellipse")
                .imageScale(.large)
                .foregroundColor(.green)
                .padding()
            Text("Place")
        }
        .frame(width: UIScreen.main.bounds.width * 0.7,
               height: 200)
        .background(Color.gray)
        .cornerRadius(16)
        .padding()
    }
}

// Statistic
struct StatisticView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.blue)
                .padding()
            Text("Statistic")
        }
        .frame(width: UIScreen.main.bounds.width * 0.7,
               height: 200)
        .background(Color.gray)
        .cornerRadius(16)
        .padding()
    }
}

// Karakter
struct ArtistView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundColor(.red)
                .padding()
            Text("Artist")
        }
        .frame(width: UIScreen.main.bounds.width * 0.7,
               height: 200)
        .background(Color.gray)
        .cornerRadius(16)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeUIView()
    }
}
