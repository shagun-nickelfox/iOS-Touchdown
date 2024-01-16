//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Nickelfox on 21/12/23.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand: Brand
    
    var body: some View {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
                .background(Color.white.cornerRadius(12))
                .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider{
    static var previews: some View{
        BrandItemView(brand: brands[0])
            .padding()
            .background(colorBackground)
    }
}
