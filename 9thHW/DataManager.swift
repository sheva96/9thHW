//
//  DataManager.swift
//  9thHW
//
//  Created by Евгений Шевченко on 11.11.2020.
//

class DataManager {
    static let shared = DataManager()
    
    let presets = [
        "shake", "pop", "morph", "squeeze",
        "swing", "flipX", "flipY", "fall",
        "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp",
        "slideLeft", "slideRight", "slideDown", "slideUp",
        "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight",
        "fadeInUp", "zoomIn", "zoomOut","flash"
    ]
    let curves = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]

    private init() {}
}
