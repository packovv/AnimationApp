//
//  Animation.swift
//  AnimationApp
//
//  Created by packovv on 12.01.2022.
//

struct AnimeValue {
    let viewLabel: String
    let buttonTitle: String
    
    static func getAnimeValue() -> [AnimeValue] {
        [
            AnimeValue(viewLabel: "Core Animation", buttonTitle: "Run Core Animation"),
            AnimeValue(viewLabel: "Spring Animation", buttonTitle: "Run Spring Animation")
        ]
    }
}




