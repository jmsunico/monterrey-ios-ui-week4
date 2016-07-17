//
//  cheeseSelectionController.swift
//  watchPizza
//
//  Created by José-María Súnico on 20160717.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import WatchKit
import Foundation


class cheeseSelectionController: WKInterfaceController {
	
	@IBOutlet var cheesePicker: WKInterfacePicker!
	
	@IBAction func cheesePickerSelected(value: Int) {
		newPizza.cheese = Cheeses[value]
		
	}
	@IBAction func onCheeseSelected() {
	}
	
	override func awakeWithContext(context: AnyObject?) {
		super.awakeWithContext(context)
		//
		var itemList: [(String, String)] = []
		for i in 0..<Cheeses.count{
			itemList.append((Cheeses[i], Cheeses[i]))
		}
		// Configure picker elements
		let pickerItems: [WKPickerItem] = itemList.map {
			let pickerItem = WKPickerItem()
			pickerItem.caption = $0.0
			pickerItem.title = $0.1
			newPizza.cheese = pickerItem.title!
			return pickerItem
		}
		cheesePicker.setItems(pickerItems)
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
