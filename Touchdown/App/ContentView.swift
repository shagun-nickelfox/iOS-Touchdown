//
//  ContentView.swift
//  Touchdown
//
//  Created by Nickelfox on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack{
            if shop.showingProduct == false && shop.selectedProduct == nil{
                VStack(spacing:0){
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x:0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15){
                                ForEach(products){ product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    })
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            }else{
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
