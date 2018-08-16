//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//all robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {

	func l0c() {
		move()
		if frontIsClear {
			doubleMove()
			pick()
			doubleMove()
			turnRight()
			move()
			put()
			turnLeft()
			doubleMove()
		}
		else {
			put()
		}
		turnRight()
		turnLeft()
	}
	
	func forLoopExample() {
		for _ in 0..<14 {
			put()
			move()
		}
		put()
	}
	
	//in this function change levelName
	override func viewDidLoad() {
		levelName = "L3C" // level name

		super.viewDidLoad()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
		
		// loop to search candy
		while noCandyPresent { // loop to search candy
			if frontIsClear {
				move()
			}
			else {
				break
			}
			put()
			pick()
		}
		turnRight()
		turnLeft()
	}
	
	func turnLeft() {
		for _ in 0..<3 {
			turnRight()
		}
	}
	
	func doubleMove() {
		move()
		move()
	}
	
}
