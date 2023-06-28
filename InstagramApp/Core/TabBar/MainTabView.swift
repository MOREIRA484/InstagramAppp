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
            FeedView()
             .tabItem {
                    Image(systemName: "house")
                    
                }
            
           SearchView()
            
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                }

            
            Text("Upload Post")
            
                .tabItem {
                    Image(systemName: "plus.square")
                    
                }

            Text("Notification")
            
                .tabItem {
                    Image(systemName: "heart")
                    
                }
          CorrentUserProfileView()
                .tabItem {
                    Image(systemName: "person")
                   
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
