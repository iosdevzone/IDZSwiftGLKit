# IDZSwiftGLKit
Swift extensions to Apple's GLKit

## Arithmetic Operators 

Provides matrix multiplication, addition, and  subtraction operators.

### multiplication

Before:
```swift 
let mvp = GLKMatrix4Multiply(projection, GLKMatrix4Multiply(view, model))
```

After:
```
let mvp = projection * view * model
```

## Constants

### eye

Shorthand for `GLKMatrix4Identity`

Before:
```swift
let I = GLKMatrix4Identity
```
After:
```swift
let I = GLKMatrix4.eye
```

### zero

Shorthand for `GLKMatrix4()`


## Adapters





### And...
Provides `==` but grudgingly so.

## Debug

Provides `debugDescription`