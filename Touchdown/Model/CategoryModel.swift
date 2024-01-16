//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Nickelfox on 20/12/23.
//

import Foundation

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
