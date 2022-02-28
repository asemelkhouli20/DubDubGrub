//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Asem on 27/02/2022.
//

import SwiftUI

struct AppTabView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGroupedBackground
        }
    
    var body: some View {
        TabView{
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationListView()
                .tabItem {
                    Label("Location",systemImage: "building")
                }
            NavigationView{
                ProfileView()
                
            }
                .tabItem {
                    Label("Profile",systemImage: "person")
                }
        }
        .accentColor(.brandPrimary)
        
        
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
            .preferredColorScheme(.dark)
    }
}
