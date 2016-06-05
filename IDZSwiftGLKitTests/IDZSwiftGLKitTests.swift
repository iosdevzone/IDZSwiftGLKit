//
//  IDZSwiftGLKitTests.swift
//  IDZSwiftGLKitTests
//
//  Created by Danny Keogan on 6/5/16.
//  Copyright © 2016 iOS Developer Zone. All rights reserved.
//

import XCTest
@testable import IDZSwiftGLKit
import GLKit

class IDZSwiftGLKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMultiply() {
        
        let I = GLKMatrix4Identity
        let X = GLKMatrix4(m: (1.0, 2.0, 3.0, 4.0,
                              5.0, 6.0, 7.0, 8.0,
                              9.0, 8.0, 7.0, 6.0,
                              5.0, 4.0, 3.0, 2.0))
        let P1 = I * X
        XCTAssert(P1 == X)
        let P2 = X * I
        XCTAssert(P2 == X)
        
        let Y = GLKMatrix4(m: (10.0, 2.0, 13.0, 4.0,
            5.0, 6.0, 7.0, 8.0,
            9.0, 8.0, 17.0, 6.0,
            5.0, 24.0, 3.0, 2.0))
        
        let P3 =  (X * Y).transpose
        let P4 =  Y.transpose * X.transpose
        
        XCTAssert(P3 == P4)

    }
    
    func testSubtract() {
        let X = GLKMatrix4(m: (1.0, 2.0, 3.0, 4.0,
            5.0, 6.0, 7.0, 8.0,
            9.0, 8.0, 7.0, 6.0,
            5.0, 4.0, 3.0, 2.0))
        let Z = GLKMatrix4.zero
        
        XCTAssert(X - X == Z)
        XCTAssert(X - Z == X)
    }
    
    func testTranspose() {

        let X = GLKMatrix4(m: (1.0, 2.0, 3.0, 4.0,
            5.0, 6.0, 7.0, 8.0,
            9.0, 8.0, 7.0, 6.0,
            5.0, 4.0, 3.0, 2.0))

        
        let Y = GLKMatrix4(m: (10.0, 2.0, 13.0, 4.0,
            5.0, 6.0, 7.0, 8.0,
            9.0, 8.0, 17.0, 6.0,
            5.0, 24.0, 3.0, 2.0))
        
        XCTAssert(X.transpose.transpose == X)
        
        
    }
    

    
}
