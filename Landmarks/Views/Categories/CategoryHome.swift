//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 15/3/21.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            List{
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                    
                }
            }
                .navigationTitle(/*@START_MENU_TOKEN@*/"Featured"/*@END_MENU_TOKEN@*/)
        }
       
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
