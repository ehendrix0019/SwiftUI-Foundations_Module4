//
//  RecipeTabView.swift
//  RecipeListApp
//
//  Created by Eric Hendrix on 2/24/23.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
       
        TabView {
            Text("Featured View")
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
                
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
