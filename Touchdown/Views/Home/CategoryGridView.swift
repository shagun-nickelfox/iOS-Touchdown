//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Nickelfox on 20/12/23.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing){
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ){
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
            }
            .frame(height: 150)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider{
    static var previews: some View{
        CategoryGridView()
            .padding()
            .background(colorBackground)
    }
}
