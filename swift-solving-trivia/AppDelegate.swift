//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        
        var answer = ""
        
        for (key, value) in trivia {
            let states = key.lowercased().characters
            let capitals = value.lowercased().characters
            
            var counter = 0
            
            for char in capitals {
                if states.contains(char) == false {
                    counter += 1
                    
                    
                }
                
            }
            if counter == capitals.count {
                answer = key
            }
        }
        
        
        return answer

        
    }
    
  
    
    
    
    
}

