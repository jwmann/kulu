//
//  TabViewController.swift
//  kawa
//
//  Created by noraesae on 06/08/2015.
//  Copyright (c) 2015 noraesae. All rights reserved.
//

import Cocoa

class TabViewController: NSViewController {
    @IBOutlet var tabView: NSTabView!
    @IBOutlet var tabControl: NSSegmentedControl!

    let sb = NSStoryboard(name: "Main", bundle: nil)!

    var shortcutViewController: ShortcutViewController!
    var systemSettingViewController: SystemSettingViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        shortcutViewController = sb.instantiateControllerWithIdentifier("ShortcutViewController") as! ShortcutViewController
        systemSettingViewController = sb.instantiateControllerWithIdentifier("SystemSettingViewController") as! SystemSettingViewController

        let shortcutViewTab = tabViewItemForIdentifier("Shortcuts")
        shortcutViewTab.view = shortcutViewController.view

        let systemSettingViewTab = tabViewItemForIdentifier("SystemSettings")
        systemSettingViewTab.view = systemSettingViewController.view
    }

    func tabViewItemForIdentifier(identifier: String) -> NSTabViewItem {
        let idx = tabView.indexOfTabViewItemWithIdentifier(identifier)
        return tabView.tabViewItemAtIndex(idx)
    }

    @IBAction func tabControlSelected(sender: AnyObject) {
        tabView.selectTabViewItemAtIndex(tabControl.selectedSegment)
    }
}
