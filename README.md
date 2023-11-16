Salutations! I come in peace ✌️

> [!NOTE]
> This pull request builds on [an earlier contribution](https://github.com/apple/swift-foundation/pull/262).

### Description

These changes aim to achieve two things. The first is making the binary integer text encoding algorithm non-generic so that models such as DoubleWidth perform well. The second is performing mutating division, making arbitrary precision faster. Copying the binary integer's words to a temporary allocation achieves both. Since the new algorithm takes a collection of words, it can also test big integers without big integer models.

### Measurements

I have published a small [package][PRP] with some [benchmarks][PRT]. 

- `v0 `: the `old` version
- `v0x`: the `old` version + `@inlinable`
- `v1 `: the `1st` version
- `v1x`: the `1st` version + `@inlinable` (2x) + `@usableFromInline` (1x)
- `v2 `: the `2nd` version
- `v2x`: the `2nd` version + `@inlinable` (2x) + `@usableFromInline` (1x)

#### The results on MacBook Pro (13-inch, M1, 2020), Xcode 15.0.1, in seconds

|          | v0     | v0x   | v1    | v1x   | v2    | v2x   | [Numberick][NBK] | Stdlib  |
|---------:|-------:|------:|------:|------:|------:|------:|-----------------:|--------:|
| Int      |  1.501 | 0.181 | 0.248 | 0.169 | 0.216 | 0.135 | 0.167            |   0.169 |
| UInt     |  0.226 | 0.191 | 0.238 | 0.158 | 0.213 | 0.133 | 0.163            |   0.163 |
| Int256   | 35.541 | 0.620 | 0.737 | 0.420 | 0.714 | 0.410 | 0.423            |  85.640 |
| UInt256  | 29.107 | 0.569 | 0.684 | 0.409 | 0.676 | 0.399 | 0.419            |  84.488 |
| Int(±1)  |  1.403 | 0.151 | 0.234 | 0.155 | 0.122 | 0.043 | 0.060            |   0.060 |
| UInt(1)  |  0.189 | 0.156 | 0.222 | 0.143 | 0.119 | 0.039 | 0.060            |   0.060 |

[PRP]: https://github.com/oscbyspro/my-swift-foundation-pull-request
[PRT]: https://github.com/oscbyspro/my-swift-foundation-pull-request/blob/main/Tests/PullRequestTests/Tests.swift
[NBK]: https://github.com/oscbyspro/Numberick
