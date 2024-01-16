//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Nickelfox on 01/01/24.
//

import SwiftUI

struct RatingSizesDetailView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L"]
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            VStack(alignment: .leading,spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 3, content: {
                    ForEach(1...5, id: \.self){ item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 5, content: {
                    ForEach(sizes, id: \.self){ item in
                        Button(action: {}, label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2))
                        })
                    }
                })
            })
        })
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider{
    static var previews: some View{
        RatingSizesDetailView()
            .padding()
    }
}
