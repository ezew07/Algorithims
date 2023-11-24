//
//  AlgorithimsTests.swift
//  AlgorithimsTests
//
//  Created by Eze, William (IRG) on 24/11/2023.
//

import XCTest

final class AlgorithimsTests: XCTestCase {
    
    func testBubbleSortForEmptyArray() {
        let sut = Algorithims()
        let data = [Int]()
        let expected = [Int]()
        
        let actual = sut.bubbleSort(data: data)
        XCTAssertEqual(actual, expected)
    }

}
