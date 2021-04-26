//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct SettingLabelView: View {
    //MARK : - properties
    var labelText:String
    var labelImage:String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
