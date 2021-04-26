//
//  SourceLink.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct SourceLink: View {
    var body: some View {
        GroupBox(){
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia",destination:URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLink_Previews: PreviewProvider {
    static var previews: some View {
        SourceLink()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
