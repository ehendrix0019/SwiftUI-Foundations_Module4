//
//  ContentView.swift
//  RecipeListApp
//
//  Created by Eric Hendrix on 2/21/23.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference ViewModel
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(destination: RecipeDetailView(recipe: r), label: {
                    HStack(spacing: 20.0){
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50.0, height: 50.0)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                })
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
