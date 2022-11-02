//
//  RestaurantView.swift
//  Interface-Co-Ltd
//
//  Created by 안수경 on 2022/11/03.
//

import SwiftUI

struct RestaurantView: View {
    @EnvironmentObject var store: RestaurantStore
    
    var body: some View {
        VStack {
            
            RestaurantCategoryView()
            
            ScrollView {
                ForEach(store.list) { restaurant in
                    NavigationLink {
                        RestaurantDetailView(restaurant: restaurant)
                    } label: {
                        RestaurantCell(restaurant: restaurant)
                    }
                    .padding(10)
                    
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }.navigationTitle("맛집 추천")
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
            .environmentObject(RestaurantStore())
            
    }
}


