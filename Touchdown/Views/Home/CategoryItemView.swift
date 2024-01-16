//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Nickelfox on 20/12/23.
//

import SwiftUI

struct CategoryItemView: View {
    var category: Category
    
    var body: some View {
        Button(action: {}, label: {
            HStack{
                Image(category.image)
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        })
    }
}

struct CategoryItemView_Previews: PreviewProvider{
    static var previews: some View{
        CategoryItemView(category: categories[0])
            .padding()
            .background(colorBackground)
    }
}
