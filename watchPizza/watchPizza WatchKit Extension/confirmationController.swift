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
	}
	
	@IBAction func onDismiss() {
	}
	
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
		let order =	"Tamaño: " + newPizza.size + "\n" +
					"Masa: " + newPizza.mass + "\n" +
					"Tipo de queso: " + newPizza.cheese + "\n" +
					"Extras: " + String(newPizza.extras)
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
