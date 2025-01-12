// swift-tools-version:5.7

import PackageDescription

let package = Package(
   name: "leetcode16ways",
   // Versions copied from https://support.leetcode.com/hc/en-us/articles/360011833974-What-are-the-environments-for-the-programming-languages
   dependencies: [
       .package(url: "https://github.com/apple/swift-algorithms", exact: "1.2.0"),
       .package(url: "https://github.com/apple/swift-collections", exact: "1.1.4"),
       .package(url: "https://github.com/apple/swift-numerics", exact: "1.0.2")
   ],
   targets: [
       .target(
           name: "SwiftLeetCode",
           dependencies: [
               .product(name: "Algorithms", package: "swift-algorithms"),
               .product(name: "Collections", package: "swift-collections"),
               .product(name: "Numerics", package: "swift-numerics")
           ]
       )
   ]
)