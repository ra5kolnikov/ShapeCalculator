//
//  ShapeCalculatorTests.swift
//  ShapeCalculatorTests
//
//  Created by Виталий on 11.02.2024.
//

import XCTest
@testable import ShapeCalculator

final class ShapeCalculatorTests: XCTestCase {
    func testCircleArea() {
        let circle = Circle(radius: 1)
        XCTAssertEqual(calculateArea(of: circle), .pi, accuracy: 0.001, "Площадь круга должна быть равна π для радиуса 1")
    }
    
    func testTriangleArea() {
        let triangle = Triangle(a: 3, b: 4, c: 5)
        XCTAssertEqual(calculateArea(of: triangle), 6, "Площадь треугольника должна быть равна 6 для сторон 3, 4, 5")
    }
    
    func testTriangleIsRight() {
        let triangle = Triangle(a: 3, b: 4, c: 5)
        XCTAssertTrue(triangle.isRightAngled(), "Треугольник со сторонами 3, 4, 5 должен быть прямоугольным")
    }
}
