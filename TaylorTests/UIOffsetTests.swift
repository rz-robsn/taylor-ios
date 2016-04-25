//
//  UIOffsetTests.swift
//  Taylor
//
//  Created by Dominic Plouffe on 2016-04-25.
//  Copyright © 2016 Mirego. All rights reserved.
//

import XCTest
import Taylor

class UIOffsetTests: XCTestCase
{
    func testShortcutsReturnsAValidOffset()
    {
        XCTAssertEqual(UIOffset.horizontal(5), UIOffset(horizontal: 5, vertical: 0))
        XCTAssertEqual(UIOffset.vertical(5), UIOffset(horizontal: 0, vertical: 5))
        XCTAssertEqual(UIOffset.zero, UIOffsetZero)
    }
}
