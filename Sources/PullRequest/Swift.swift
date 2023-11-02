@inlinable public func someSwiftBinaryInteger<T>(
_   value: T) -> some Swift.BinaryInteger where T: Swift.BinaryInteger {
    value
}

@inlinable public func someSwiftFixedWidthInteger<T>(
_   value: T) -> some Swift.FixedWidthInteger where T: Swift.FixedWidthInteger {
    value
}
