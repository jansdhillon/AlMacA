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
    var popover: NSPopover!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        
        self.popover = NSPopover()
        self.popover.contentSize = NSSize(width: 320, height: 480)
        self.popover.behavior = .transient
        self.popover.contentViewController = NSHostingController(rootView: ChatView())
        
        let statusBar = NSStatusBar.system
        
        self.statusBarItem = statusBar.statusItem(withLength: NSStatusItem.squareLength)
        self.statusBarItem.button?.image = NSImage(imageLiteralResourceName: "AlMacA")
        self.statusBarItem.button?.image?.size = NSSize(width: 18.0, height: 18.0)
        self.statusBarItem.button?.action = #selector(startChat)
    }
    
    @objc func startChat() {
        if self.popover.isShown {
            self.popover.performClose(nil)
        } else {
            if let button = self.statusBarItem.button {
                self.popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
            }
        }
        
        
        
    }
}
