//
//  FructusApp.swift
//  Fructus
//
//  Created by Aviral on 20/04/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if(isOnBoarding){
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
