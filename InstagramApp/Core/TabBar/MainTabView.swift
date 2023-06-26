//
//  MainTabView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 26/06/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            Text("Feed")
            
                .tabItem {
                    Image(systemName: "house")
                    Text("Feed")
                }
            
            Text("Search")
            
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Feed")
                }

            
            Text("Upload Post")
            
                .tabItem {
                    Image(systemName: "plus.square")
                    Text("Feed")
                }

            Text("Notification")
            
                .tabItem {
                    Image(systemName: "person")
                    Text("Feed")
                }

            
            Text("Profile")
            
            
                .tabItem {
                    Image(systemName: "heart")
                    Text("Feed")
                }
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
