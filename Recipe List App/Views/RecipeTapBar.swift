//
//  RecipeTapBar.swift
//  Recipe List App
//
//  Created by Hamed Mohamed on 17/02/2022.
//

import SwiftUI

struct RecipeTapBar: View {
    var body: some View {
        TabView{
            featuredView().tabItem {
                VStack{
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            }
            
            RecipeListView().tabItem {
                VStack{
                    Image(systemName: "list.bullet")
                    Text("List")
                }
            }
        }.environmentObject(RecipeModel())
    }
}

struct RecipeTapBar_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTapBar()
    }
}
