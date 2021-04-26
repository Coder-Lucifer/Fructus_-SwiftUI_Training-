//
//  FruitCardView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK : - properties
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    //MARK : - body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //: Title
                Text(fruit.title)
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 45, weight: .bold, design: .default))
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .padding(.horizontal,16)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2, x: 2, y: 2)
                
                StartButtonView()
            }//VStack
        } //:ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration:0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
}

//MARK : - preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[0])
    }
}
