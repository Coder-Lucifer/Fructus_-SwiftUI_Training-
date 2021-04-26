//
//  ContentView.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

struct ContentView: View {
    //MARK : - Properties
    var fruits:[Fruit] = fruitData
    @State private var isShowingSetting: Bool = false
    
    //MARK : - Body
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()){item in
                    NavigationLink(
                        destination: FruitDetailView(fruit:item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSetting = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }).sheet(isPresented: $isShowingSetting, content: {
                SettingsView()
            }))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
