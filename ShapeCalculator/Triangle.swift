//
//  Triangle.swift
//  ShapeCalculator
//
//  Created by Виталий on 11.02.2024.
//

import Foundation

class Triangle: Shape {
    var a, b, c: Double

    init(a: Double, b: Double, c: Double) {
        self.a = a
        self.b = b
        self.c = c
    }

    func area() -> Double {
        let p = (a + b + c) / 2
        return (p * (p - a) * (p - b) * (p - c)).squareRoot()
    }

    func isRightAngled() -> Bool {
        let sides = [a, b, c].sorted()
        return abs(sides[0]*sides[0] + sides[1]*sides[1] - sides[2]*sides[2]) < .ulpOfOne
    }
}
