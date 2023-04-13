//
//  AppDelegate.swift
//  AlMacA
//
//  Created by Jan Dhillon on 2023-04-13.
//

import AppKit
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    
    var statusBarItem: NSStatusItem!
    var statusBarMenu: NSMenu!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        
        let statusBar = NSStatusBar.system
        
        self.statusBarItem = statusBar.statusItem(withLength: NSStatusItem.squareLength)
        self.statusBarItem.button?.image = NSImage(systemSymbolName: "star.fill", accessibilityDescription: "AlMacA")
        
        self.statusBarMenu = NSMenu()
        self.statusBarMenu.addItem(withTitle: "Chat", action: #selector(startChat), keyEquivalent: "")
        
        self.statusBarItem.menu = self.statusBarMenu
    }
    
    @objc func startChat() {
        NSApplication.shared.activate(ignoringOtherApps: true)
        
        let chat = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 640, height: 480),
            styleMask: [.titled, .closable, .fullSizeContentView],
            backing: .buffered,
            defer: false
        )
        
        chat.title = "Chat"
        
        chat.isReleasedWhenClosed = false
        
        chat.contentView = NSHostingView(rootView: ChatView())
        
        chat.center()
        chat.makeKeyAndOrderFront(nil)
        
        
        
    }
}
