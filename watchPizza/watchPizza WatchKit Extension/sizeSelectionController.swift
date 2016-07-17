//
//  sizeSelectionController.swift
//  watchPizza
//
//  Created by José-María Súnico on 20160717.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import WatchKit
import Foundation


class sizeSelectionController: WKInterfaceController {

	@IBOutlet var sizePicker: WKInterfacePicker!
	
	@IBAction func sizePickerSelected(value: Int) {
		newPizza.size = Sizes[value]
	}
	@IBAction func onSizeSelected() {
	}
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        //
		var itemList: [(String, String)] = []
		for i in 0..<Sizes.count{
			itemList.append((Sizes[i], Sizes[i]))
		}
        // Configure picker elements
		let pickerItems: [WKPickerItem] = itemList.map {
			let pickerItem = WKPickerItem()
			pickerItem.caption = $0.0
			pickerItem.title = $0.1
			newPizza.size = pickerItem.title!
			return pickerItem
		}
		self.sizePicker.setItems(pickerItems)
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
