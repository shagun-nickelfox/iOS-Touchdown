//
//  Constants.swift
//  Touchdown
//
//  Created by Nickelfox on 19/12/23.
//

import SwiftUI
    
//DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]
    
// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return  Array(repeating: GridItem(.flexible(),spacing: rowSpacing) ,count: 2)
}
