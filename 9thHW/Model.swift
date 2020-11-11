//
//  Model.swift
//  9thHW
//
//  Created by Евгений Шевченко on 11.11.2020.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension Animation {
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let presets = DataManager.shared.presets
        let curves = DataManager.shared.curves
        
        for index in 0..<presets.count {
            animations.append(
                Animation(
                    preset: presets[index],
                    curve: curves[Int.random(in: 0..<curves.count)],
                    force: 1.0,
                    duration: 0.8,
                    delay: 0.2
                )
            )
        }
        return animations
    }
}
