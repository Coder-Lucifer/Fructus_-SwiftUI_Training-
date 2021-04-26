//
//   SettingRowView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct SettingRowView: View {
    //MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDescription: String? = nil
    
    //MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name)
                Spacer()
                if content != nil {
                    Text(content!)
                }else if linkLabel != nil && linkDescription != nil {
                    Link(linkLabel!,destination:URL(string: "https://\(linkDescription!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.red)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "Aviral")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingRowView(name: "Developer", linkLabel: "Twitter",linkDescription: "twitter.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
