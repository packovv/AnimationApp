//
//  Animation.swift
//  AnimationApp
//
//  Created by packovv on 12.01.2022.
//

import UIKit

struct SpringAnimation: Equatable {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getSpringAnimation() -> [SpringAnimation] {
        [
            SpringAnimation(animation: "shake",
                            curve: "spring",
                            force: 1,
                            duration: 1,
                            delay: 0.1),
            SpringAnimation(animation: "pop",
                            curve: "linear",
                            force: 2,
                            duration: 2,
                            delay: 0),
            SpringAnimation(animation: "morph",
                            curve: "easeIn",
                            force: 0.5,
                            duration: 3,
                            delay: 0.2),
            SpringAnimation(animation: "slideUp",
                            curve: "easeInOut",
                            force: 1.5,
                            duration: 2.5,
                            delay: 0.3),
            SpringAnimation(animation: "fall",
                            curve: "linear",
                            force: 2,
                            duration: 2,
                            delay: 0)
        ]
    }
}




