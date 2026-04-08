//
//  todoappApp.swift
//  todoapp
//
//  Created by Vepa Babayev on 2026. 04. 06..
//

import SwiftUI
import FirebaseCore

@main
struct todoappApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
