//
//  Matrix.swift
//  IDZSwiftGLKit
//
//  Created by idz on 6/5/16.
//  Copyright © 2016 iOS Developer Zone. All rights reserved.
//

import Foundation
import GLKit

/**
 Some handy extensions to `GLKit`'s `GLKMatrix4` class.
*/
public extension GLKMatrix4 {
    /**
     The matrix identity I
     */
    static var eye = GLKMatrix4Identity
    /**
     The zero matrix
     */
    static var zero = GLKMatrix4()
    /**
     Convenience property for passing to OpenGL.
     
     Sample Usage:
     
     ```
     glUniformMatrix4fv(mvpLocation, 1, 0, mvp)
     ```
    */
    var array: [GLfloat] { return (0..<16).map { self[$0] } }
    /**
     The inverse of this matrix, if it is invertible
    */
    var inverse: GLKMatrix4? {
        var isInvertible = false
        let retval = GLKMatrix4Invert(self, &isInvertible)
        return  isInvertible ? retval : nil
    }
    /**
     The transpose of this matrix.
    */
    var transpose: GLKMatrix4 {
        return GLKMatrix4Transpose(self)
    }
    
    var debugDescription : String {
        return self.array.map { String($0) }.joinWithSeparator(", ")
    }
}

/**
 Evaluates `lhs` * `rhs`.
 
 - parameter lhs: the left hand side matrix
 - parameter rhs: the right hand side matrix
 - returns: `lhs` * `rhs`
 */
public func*(lhs: GLKMatrix4, rhs: GLKMatrix4) -> GLKMatrix4 {
    return GLKMatrix4Multiply(lhs, rhs)
}
/**
 Evaluates `lhs` + `rhs`.
 
 - parameter lhs: the left hand side matrix
 - parameter rhs: the right hand side matrix
 - returns: `lhs` + `rhs`
 */
public func+(lhs: GLKMatrix4, rhs: GLKMatrix4) -> GLKMatrix4 {
    return GLKMatrix4Add(lhs, rhs)
}
/**
 Evaluates `lhs` - `rhs`.
 
 - parameter lhs: the left hand side matrix
 - parameter rhs: the right hand side matrix
 - returns: `lhs` - `rhs`
*/
public func-(lhs: GLKMatrix4, rhs: GLKMatrix4) -> GLKMatrix4 {
    return GLKMatrix4Subtract(lhs, rhs)
}

/**
 Compares two matrices for exact equality.
 This is not very useful... there should be some tolerance.
 */
public func==(lhs: GLKMatrix4, rhs: GLKMatrix4) -> Bool {
    for i in 0..<16 {
        if lhs[i] != rhs[i] {
            return false
        }
    }
    return true
}


