//
//  CGRectTests.swift
//  Taylor
//
//  Created by Dominic Plouffe on 2016-04-25.
//  Copyright © 2016 Mirego. All rights reserved.
//

import XCTest
import Taylor

class CGRectTests: XCTestCase
{
    var rect: CGRect?
    
    override func setUp()
    {
        rect = CGRect(origin: CGPoint(x: 5, y: 10), size: CGSize(width: 50, height: 50))
    }
    
    func testXReturnOriginXValue()
    {
        XCTAssertEqual(rect!.x, rect!.origin.x)
    }
    
    func testYReturnOriginYValue()
    {
        XCTAssertEqual(rect!.y, rect!.origin.y)
    }
    
    func testInsetByReturnTheRightRect()
    {
        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 8, right: 14)
        let smallerRect = rect!.insetBy(insets)
        XCTAssertEqual(smallerRect, CGRect(origin: CGPoint(x: 10, y: 20), size: CGSize(width: 31, height: 32)))
    }
    
    func testZeroInsetReturnsSameRect()
    {
        XCTAssertEqual(rect!, rect!.insetBy(.zero))
    }
}

