//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by Eric Hendrix on 2/21/23.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init(){
        //Create an instance of data services and get the data
        self.recipes = DataService.getLocalData()
        //Set the recipes property
        
    }
    
}
