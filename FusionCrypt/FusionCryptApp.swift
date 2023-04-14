//
//  FusionCryptApp.swift
//  FusionCrypt
//
//  Created by qihuiyu on 12/04/2023.
//

import SwiftUI

@main
struct FusionCryptApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
