//
//  PreferenceWindowController.swift
//  kulu
//
//  Created by noraesae on 27/07/2015.
//  Copyright (c) 2015 noraesae. All rights reserved.
//

import Cocoa

class PreferenceWindowController: NSWindowController, NSWindowDelegate {
    func showAndActivate(sender: AnyObject?) {
        self.showWindow(sender)
        self.window?.makeKeyAndOrderFront(sender)
        NSApp.activateIgnoringOtherApps(true)
    }

    func windowWillClose(notification: NSNotification) {
        deactivate()
    }

    func deactivate() {
        // focus an application owning the menu bar
        let workspace = NSWorkspace.sharedWorkspace()
        workspace.menuBarOwningApplication?.activateWithOptions(NSApplicationActivationOptions.ActivateIgnoringOtherApps)
    }
}
