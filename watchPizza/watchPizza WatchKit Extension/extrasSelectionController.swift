//
//  extrasSelectionController.swift
//  watchPizza
//
//  Created by José-María Súnico on 20160717.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import WatchKit
import Foundation


class extrasSelectionController: WKInterfaceController {
	var tempExtra = ""
	
	@IBOutlet var extrasPicker: WKInterfacePicker!
	@IBOutlet var currentExtras: WKInterfaceLabel!
	
	
	@IBAction func onClear() {
		self.tempExtra = ""
		newPizza.extras = []
		self.currentExtras.setText(String(newPizza.extras.count))
		self.extrasPicker.setSelectedItemIndex(0)
		self.extrasPickerSelected(0)
		self.onAddLabel.setEnabled(true)
		self.onEnoughLabel.setEnabled(false)

	}
	
	@IBAction func extrasPickerSelected(value: Int) {
		self.tempExtra = Extras[value]
	}
	
	@IBOutlet var onEnoughLabel: WKInterfaceButton!
	@IBAction func onEnough() {
		popController()
	}
	
	@IBOutlet var onAddLabel: WKInterfaceButton!
	@IBAction func onAdd() {
		if self.tempExtra != "" {
			newPizza.extras.append(tempExtra)
			self.currentExtras.setText(String(newPizza.extras.count))
			if newPizza.extras.count > 0 {
				self.onEnoughLabel.setEnabled(true)
			} else{
				self.onEnoughLabel.setEnabled(false)
			}
			if newPizza.extras.count < 5 {
				self.onAddLabel.setEnabled(true)
			} else{
				self.onAddLabel.setEnabled(false)
			}
		}
	}
	
	
	
	
	
	override func awakeWithContext(context: AnyObject?) {
		super.awakeWithContext(context)
		// Configure picker elements
		var itemList: [(String, String)] = []
		for i in 0..<Extras.count{
			itemList.append((Extras[i], Extras[i]))
		}
		
		let pickerItems: [WKPickerItem] = itemList.map {
			let pickerItem = WKPickerItem()
			pickerItem.caption = $0.0
			pickerItem.title = $0.1
			self.extrasPickerSelected(0)
			return pickerItem
		}
		
		extrasPicker.setItems(pickerItems)
		
		self.currentExtras.setText(String(newPizza.extras.count))
		if newPizza.extras.count > 0 {
			self.onEnoughLabel.setEnabled(true)
		} else{
			self.onEnoughLabel.setEnabled(false)
		}
		if newPizza.extras.count < 5 {
			self.onAddLabel.setEnabled(true)
		} else{
			self.onAddLabel.setEnabled(false)
		}
		


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
