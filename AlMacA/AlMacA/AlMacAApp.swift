//
//  AlMacAApp.swift
//  AlMacA
//
//  Created by Jan Dhillon on 2023-04-13.
//

import SwiftUI

@main
struct AlMacAApp: App {
        
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        Settings {
            ContentView()
        }
    }
    
}
