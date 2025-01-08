class SwiftContainsDuplicate {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var seen: Set = []
        
        return !nums.allSatisfy { num in
            seen.insert(num).inserted
        }
    }
}