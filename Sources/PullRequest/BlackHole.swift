@inline(never) @_semantics("optimize.no.crossmodule")
public func blackHole<T>(_ x: T) {  }

@inline(never) @_semantics("optimize.no.crossmodule")
public func blackHoleIdentity<T>(_ x: T) -> T { x }

@inline(never) @_semantics("optimize.no.crossmodule")
public func blackHoleInoutIdentity<T>(_ x: inout T) { }
