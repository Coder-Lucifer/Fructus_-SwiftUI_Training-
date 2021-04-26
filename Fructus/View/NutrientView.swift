//
//  NutrientView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct NutrientView: View {
    var fruit:Fruit
    let nutrients:[String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional Value per 100g"){
                ForEach(0..<nutrients.count,id:\.self){item in
                    
                    Divider().padding(.vertical,2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                                .foregroundColor(fruit.gradientColors[1])
                                .font(Font.system(.body).bold())
                        }
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct NutrientView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
