//
//  confirmationController.swift
//  watchPizza
//
//  Created by José-María Súnico on 20160717.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import WatchKit
import Foundation


class confirmationController: WKInterfaceController {

	@IBOutlet var currentOrder: WKInterfaceLabel!
	
	@IBAction func onOrder() {
		ordersLog.append(newPizza)
		newPizza = Pizza()
		popController()
	}
	
	@IBAction func onDismiss() {
		popController()
	}
	
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
		var order =	"Pizza " + newPizza.size + ", masa " +
			newPizza.mass + ", " + newPizza.cheese + ", "
		for i in 0..<newPizza.extras.count{
			if i == 0{
				order = order + newPizza.extras[i]
			} else if i == newPizza.extras.count-1{
				order = order + " y " + newPizza.extras[i]
			} else{
				order = order + ", " + newPizza.extras[i]
			}
		}
		currentOrder.setText(order)
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
