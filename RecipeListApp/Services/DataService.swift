//
//  DataService.swift
//  RecipeListApp
//
//  Created by Eric Hendrix on 2/21/23.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        //Parse local JSON file
        
        //Get a URL path to the JSON file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else{
            return [Recipe]()
        }
        //Create a URL object
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            //Create a data object
            let data = try Data(contentsOf: url)
            
            //Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do{
                let recipeData = try decoder.decode([Recipe].self, from: data)
                //Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                    for i in r.ingredients{
                        i.id = UUID()
                    }
                }
                //Return the recipes
                return recipeData
            }
            catch{
                //Error with parsing JSON
                print(error)
            }
            
        }
        catch{
            //Error with getting data
            print(error)
        }
        
        return [Recipe]()
    }
    
}
