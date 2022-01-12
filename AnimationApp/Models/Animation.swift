//
//  Animation.swift
//  AnimationApp
//
//  Created by packovv on 12.01.2022.
//

import UIKit

struct SpringAnimation: Equatable {
    let id: Character
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getSpringAnimation() -> [SpringAnimation] {
        [
            SpringAnimation(id: "0",
                            animation: "shake",
                            curve: "spring",
                            force: 1,
                            duration: 1,
                            delay: 0.1),
            SpringAnimation(id: "1",
                            animation: "pop",
                            curve: "linear",
                            force: 2,
                            duration: 2,
                            delay: 0),
            SpringAnimation(id: "2",
                            animation: "morph",
                            curve: "easeIn",
                            force: 0.5,
                            duration: 3,
                            delay: 0.2),
            SpringAnimation(id: "3",
                            animation: "slideUp",
                            curve: "easeInOut",
                            force: 1.5,
                            duration: 2.5,
                            delay: 0.3)
        ]
    }
}




