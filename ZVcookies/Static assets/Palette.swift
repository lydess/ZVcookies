//
//  Palette.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import Foundation
import SwiftUI

struct Palate {
    var primaryui:Color
    var mainback:Color
    var foreground:Color
    var Secondback:Color
    var Thirdback:Color
    var forg:Color
    init() {
        primaryui = Color(.sRGB, red: 0.980, green: 0.675, blue: 0.467, opacity: 1.0)
        mainback = Color(.sRGB, red: 0.788, green: 0.788, blue: 0.741, opacity: 1.0)
        foreground = Color(.sRGB, red: 0.941, green: 0.943, blue: 0.933, opacity: 1.0)
        Secondback = Color(.sRGB, red: 0.376, green: 0.420, blue: 0.435, opacity: 1.0)
        Thirdback = Color(.sRGB, red: 0.200, green: 0.235, blue: 0.243, opacity: 1.0)
        forg = Color(uiColor: UIColor(named: "foreg")!)
    }
}
