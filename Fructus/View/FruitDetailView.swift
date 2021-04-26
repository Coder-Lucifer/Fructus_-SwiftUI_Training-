//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators:false){
                VStack(alignment: .center, spacing: 20) {
                    //Headers
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.system(size: 40, weight: .bold, design: .default))
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .multilineTextAlignment(.leading)
                        
                        
                        //Nutrition View
                        
                        NutrientView(fruit: fruit)
                        
                        //subheading
                        Text("Learn More About \(fruit.title)".uppercased())
                            .font(.system(size: 22, weight: .bold, design: .default))
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //link
                        SourceLink()
                            .padding(.bottom,30)
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                }
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
