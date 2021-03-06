//
//  SettingsView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - property
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = false
    
    //MARK: - body
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators:false){
                VStack(spacing:20){
                    
                    //MARK: - Section 1
                    GroupBox(label: SettingLabelView(labelText: "Fructus", labelImage: "info.circle")){
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.").font(.footnote)
                        }
                    }
                    
                    
                    // MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnBoarding) {
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingRowView(name: "Developer", content: "Aviral")
                        SettingRowView(name: "Designer", content: "Robert Petras")
                        SettingRowView(name: "Compatibility", content: "iOS 14")
                        SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDescription: "swiftuimasterclass.com")
                        SettingRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDescription: "twitter.com/robertpetras")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                    }
                }
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
        //            .preferredColorScheme(.dark)
    }
}
