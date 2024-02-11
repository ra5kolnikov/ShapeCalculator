//
//  Circle.swift
//  ShapeCalculator
//
//  Created by Виталий on 11.02.2024.
//

import Foundation

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return .pi * radius * radius
    }
}
