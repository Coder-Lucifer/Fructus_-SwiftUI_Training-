//
//  StartButtonView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK : - Properties
    @AppStorage("isOnBoarding") var isOnBoarding:Bool?
    //MARK : - Body
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }, label: {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        })//Button
        .accentColor(.white)
    }
}


//MARK : - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
