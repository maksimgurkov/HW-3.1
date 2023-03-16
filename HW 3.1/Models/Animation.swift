//
//  Animation.swift
//  HW 3.1
//
//  Created by Максим Гурков on 16.03.2023.
//

import Foundation

struct Animation {
    
    var animation: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    static var animation: Animation {
        Animation(
            animation: DataManager.data.nameAnimations.randomElement() ?? "",
            curve: DataManager.data.curveNames.randomElement() ?? "",
            force: DataManager.data.valueForces.randomElement() ?? 0.0,
            duration: DataManager.data.valueDurations.randomElement() ?? 0.0,
            delay: DataManager.data.valueDelays.randomElement() ?? 0.0
        )
    }
}
