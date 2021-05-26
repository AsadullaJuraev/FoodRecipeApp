//
//  ContentView.swift
//  FoodRecipeApp
//
//  Created by Asadulla Juraev on 15.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    var body: some View {
        
        TabView(selection: $selected ){
            HomeView().tabItem {
                    Image(systemName:  self.selected == 0 ? "house.fill" : "house")
                    Text("Home")
            }.tag(0)
            CategoryView().tabItem {
                    Image(systemName: self.selected == 1 ? "circle.grid.2x2.fill" : "circle.grid.2x2")
                    Text("Category")
            }.tag(1)
            SavedView().tabItem {
                    Image(systemName: self.selected == 2 ? "bookmark.fill" : "bookmark")
                    Text("Saved")
            }.tag(2)
            ProfileView().tabItem {
                    Image(systemName: self.selected == 3 ? "person.fill" : "person")
                    Text("Profile")
            }.tag(3)
        }
        .accentColor(Color(#colorLiteral(red: 0.3691508174, green: 0.6315197945, blue: 0.5072926283, alpha: 1)))
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
