# IDZSwiftGLKit
Swift extensions to Apple's GLKit

## Arithmetic Operators 

Provides matrix addition, subtraction and multiplication operators.

### multiplication

Before:
```swift 
let mvp = GLKMatrix4Multiply(projection, GLKMatrix4Multiply(view, model))
```

After:
let mvp = projection * view * model
```

## Constants

### eye

Shorthand for `GLKMatrixIdentity`

### zero

Shorthand for `GLKMatrix()`


## Adapters





### And...
Provides `==` but grudgingly so.

## Debug

Provides `debugDescription`