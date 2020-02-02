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
    
    var SizeOfiPad:Float = 1
    //level name setup
    override func viewDidLoad() {
        levelName = "L4H" // level name
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        CalcSizeiPad()
        while SizeOfiPad>0 {
            DrawLine()
            SizeOfiPad-=1
            if SizeOfiPad > 0 {
            NextLine()
            }
        }
    }
    func DrawLine(){
        
        while frontIsClear {
            put()
            move()
            
        }
        put()
    }
    
    func NextLine(){

        if facingRight {
            turnRight()
            move()
            if frontIsClear {
                move()
                turnRight()
                
            }
            
        } else {
            turnLeft()
            move()
            if frontIsClear {
                move()
                turnLeft()
                
            }
            
        }
    }
    func turnLeft(){
        
        turnRight()
        turnRight()
        turnRight()
    }
    func CalcSizeiPad(){
        
        turnRight()
        while frontIsClear {
            move()
            SizeOfiPad = SizeOfiPad + 1
        }
        turnRight()
        turnRight()
        while frontIsClear {
            
            move()
            
        }
        turnRight()
        SizeOfiPad = SizeOfiPad / 2
    }
}
