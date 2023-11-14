Salutations! I come in peace ✌️

> [!NOTE]
> This pull request builds on [an earlier contribution](https://github.com/apple/swift-foundation/pull/262).

### Description

These changes aim to achieve two things. The first is making the binary integer text encoding algorithm non-generic so that models such as DoubleWidth perform well. The second is performing mutating division, making arbitrary precision faster. Copying the binary integer's words to a temporary allocation achieves both. Since the new algorithm takes a collection of words, it can also test big integers without big integer models.

### Measurements

I have published a small [package][PRP] with some [benchmarks][PRT]. 

- `v0 `: the `old` version
- `v0x`: the `old` version + `@inlinable`
- `v1 `: the `new` version
- `v1x`: the `new` version + `@inlinable` (2x) + `@usableFromInline` (1x)

#### The results on MacBook Pro (13-inch, M1, 2020), Xcode 15.0.1, in seconds

|          | v0     | v0x   | v1    | v1x   | [Numberick][NBK] | Stdlib  |
|---------:|-------:|------:|------:|------:|-----------------:|--------:|
| Int      |  1.528 | 0.188 | 0.271 | 0.169 | 0.167            |   0.169 |
| UInt     |  0.226 | 0.199 | 0.257 | 0.161 | 0.163            |   0.164 |
| Int256   | 36.575 | 0.618 | 0.772 | 0.423 | 0.422            |  86.736 |
| UInt256  | 29.418 | 0.571 | 0.728 | 0.408 | 0.419            |  85.649 |
| Int(±1)  |  1.408 | 0.154 | 0.255 | 0.156 | 0.061            |   0.062 |
| UInt(1)  |  0.208 | 0.166 | 0.242 | 0.146 | 0.062            |   0.062 |

[PRP]: https://github.com/oscbyspro/my-swift-foundation-pull-request
[PRT]: https://github.com/oscbyspro/my-swift-foundation-pull-request/blob/main/Tests/PullRequestTests/Tests.swift
[NBK]: https://github.com/oscbyspro/Numberick
