//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK : - Properties
    var fruits: [Fruit] = fruitData
    
    //MARK : - Body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
        }//TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

//MARK : - Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
