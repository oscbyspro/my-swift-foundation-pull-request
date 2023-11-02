Salutations! I come in peace ✌️

> [!NOTE]
> This pull request builds on [an earlier contribution](https://github.com/apple/swift-foundation/pull/262).

### Description

These changes aim to achieve two things. The first is making the binary integer text encoding algorithm non-generic so that models such as DoubleWidth perform well. The second is performing mutating division, making arbitrary precision faster. Copying the binary integer's words to a temporary allocation achieves both. Since the new algorithm takes a collection of words, it can also test big integers without big integer models.

### Measurements

I have published a small [package][PRP] with some [benchmarks][PRT]. 

- `v0`: the `old` version
- `v1`: the `new` version
- `v2`: the `new` version + 2x `@inlinable` + 1x `@usableFromInline`

#### The results on my machine in seconds:

|         | v0     | v1    | v2    | [Numberick][NBK] | Stdlib  |
|--------:|-------:|------:|------:|-----------------:|--------:|
| Int     |  1.755 | 0.314 | 0.188 | 0.172            |   0.172 |
| UInt    |  0.261 | 0.302 | 0.181 | 0.166            |   0.167 |
| Int256  | 42.807 | 0.875 | 0.443 | 0.430            | 102.573 |
| UInt256 | 34.844 | 0.815 | 0.428 | 0.426            | 100.598 |

[PRP]: https://github.com/oscbyspro/my-swift-foundation-pull-request
[PRT]: https://github.com/oscbyspro/my-swift-foundation-pull-request/blob/main/Tests/PullRequestTests/Tests.swift
[NBK]: https://github.com/oscbyspro/Numberick
