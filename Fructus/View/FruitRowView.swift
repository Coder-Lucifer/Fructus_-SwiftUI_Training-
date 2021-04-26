//
//  FruitRowView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK : - Properties
    var fruit: Fruit
    
    //MARK : - Body
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color:Color(red: 0, green: 0, blue: 0, opacity: 0.3),radius: 3,x:2,y:2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(.system(size: 22, weight: .bold, design: .default))
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }//Hstack
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
