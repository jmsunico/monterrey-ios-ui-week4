//
//  imcModel.swift
//  testingUnitTests
//
//  Created by José-María Súnico on 20160712.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import Foundation
class imcModel{
	var weight: Float = 0
	var height: Float = 0
	
	func imcCalc() -> Float{
		var imcValue = weight/height/height
		imcValue = round(imcValue * 100) / 100
		return imcValue
	}
}