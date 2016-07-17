//
//  InterfaceController.swift
//  watchPizza WatchKit Extension
//
//  Created by José-María Súnico on 20160712.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import WatchKit
import Foundation

public let Sizes =	["pequeña", "normal", "grande"]
public let Masses =	["fina", "gruesa", "crujiente"]
public let Cheeses = ["parmesano", "mozarella", "cheddar", "sin queso"]
public let Extras =	["anchoas", "atún", "champiñón", "jamón"
	, "pepperoni", "pimiento", "piña"
	, "Pollo", "Salmón", "Tomate"]

public struct Pizza{
	var size: String
	var mass: String
	var cheese: String
	var extras: [String]
	init(){
		self.size = ""
		self.mass = ""
		self.cheese = ""
		self.extras = []
	}
}

public class sharedValues: NSObject {
	var newPizza : Pizza
	init(newPizza: Pizza){
		self.newPizza = newPizza
	}
}

public var newPizza = Pizza()
public var ordersLog = [Pizza]()

public let BLACK = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
public let GREY = UIColor(red: 0.50, green: 0.50, blue: 0.50, alpha: 1.0)

class InterfaceController: WKInterfaceController {
	
	@IBOutlet var ordersNumber: WKInterfaceLabel!
	
	@IBOutlet var onSizeLabel: WKInterfaceButton!
	@IBAction func onSize() {
	}
	

	@IBOutlet var onMassLabel: WKInterfaceButton!
	@IBAction func onMass() {
	}

	@IBOutlet var onCheeseLabel: WKInterfaceButton!
	@IBAction func onCheese() {
	}
	
	@IBOutlet var onExtrasLabel: WKInterfaceButton!
	@IBAction func onExtras() {
	}
	
	@IBOutlet var onConfirmLabel: WKInterfaceButton!
	@IBAction func onConfirm() {
		
	}

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
		// Configure interface objects here.

		
    }
	
	
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
		self.ordersNumber.setText(String(ordersLog.count))
		
		if (newPizza.size != "" && newPizza.cheese != "" &&
			newPizza.mass != "" && newPizza.extras.count > 0){
			onConfirmLabel.setEnabled(true)
		}
		else{
			onConfirmLabel.setEnabled(false)
		}
		
		if newPizza.size != "" {
			self.onSizeLabel.setBackgroundColor(BLACK)
		}
		else{
			self.onSizeLabel.setBackgroundColor(GREY)
		}
		
		if newPizza.mass != "" {
			self.onMassLabel.setBackgroundColor(BLACK)
		}
		else{
			self.onMassLabel.setBackgroundColor(GREY)
		}
		
		if newPizza.cheese != "" {
			self.onCheeseLabel.setBackgroundColor(BLACK)
		}
		else{
			self.onCheeseLabel.setBackgroundColor(GREY)
		}
		
		if newPizza.extras.count > 0 {
			self.onExtrasLabel.setBackgroundColor(BLACK)
		}
		else{
			self.onExtrasLabel.setBackgroundColor(GREY)
		}
		
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}

