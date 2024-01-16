//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Nickelfox on 19/12/23.
//

import SwiftUI

struct FeaturedItemView: View {
    
    var player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider{
    static var previews: some View{
        FeaturedItemView(player: players[0]).padding()
    }
}
