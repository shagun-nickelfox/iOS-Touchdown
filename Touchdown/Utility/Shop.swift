//
//  Shop.swift
//  Touchdown
//
//  Created by Nickelfox on 02/01/24.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
