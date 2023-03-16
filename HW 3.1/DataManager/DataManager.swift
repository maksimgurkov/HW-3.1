//
//  DataManager.swift
//  HW 3.1
//
//  Created by Максим Гурков on 16.03.2023.
//

import Foundation

final class DataManager {
    
    static let data = DataManager()
    
    let nameAnimations = [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown"
    ]
    
    let curveNames = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut"
    ]
    
    let valueDurations = [1.2, 0.9, 1.6, 0.5, 1.7, 1.0]
    
    let valueForces = [1.3, 0.8, 1.5, 0.8, 1.2, 1.0]
    
    let valueDelays = [1.0, 0.30, 0.50, 0.60, 0.20, 0.40]
    
    private init() {}
}
