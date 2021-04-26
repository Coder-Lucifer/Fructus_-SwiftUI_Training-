//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK : - properties
    var fruit:Fruit
    @State private var isAnimating: Bool = false
    
    //MARK : - body
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6, y: 4)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }.frame(height:440)
        .onAppear{
            withAnimation(.easeOut(duration:0.5)){
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit:fruitData[0])
            .previewLayout(.fixed(width: 375, height: 450))
    }
}
