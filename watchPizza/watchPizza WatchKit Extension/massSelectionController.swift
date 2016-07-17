//
//  massSelectionController.swift
//  watchPizza
//
//  Created by José-María Súnico on 20160717.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import WatchKit
import Foundation


class massSelectionController: WKInterfaceController {
	
	@IBOutlet var massPicker: WKInterfacePicker!
	
	@IBAction func massPickerSelected(value: Int) {
		newPizza.mass = Masses[value]
		
	}
	@IBAction func onMassSelected() {
	}
	
	
	
	
	
	
	
	override func awakeWithContext(context: AnyObject?) {
		super.awakeWithContext(context)
		//
		var itemList: [(String, String)] = []
		for i in 0..<Masses.count{
			itemList.append((Masses[i], Masses[i]))
		}
		// Configure picker elements
		let pickerItems: [WKPickerItem] = itemList.map {
			let pickerItem = WKPickerItem()
			pickerItem.caption = $0.0
			pickerItem.title = $0.1
			newPizza.mass = pickerItem.title!
			return pickerItem
		}
		massPicker.setItems(pickerItems)
	}
	
	override func willActivate() {
		// This method is called when watch view controller is about to be visible to user
		super.willActivate()		
	}
	
	override func didDeactivate() {
		// This method is called when watch view controller is no longer visible
		super.didDeactivate()
	}
	
}
