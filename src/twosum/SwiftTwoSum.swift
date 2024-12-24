class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndex = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            
            if let j = numToIndex[num] {
                return [j, i]
            }
            
            numToIndex[target - num] = i
        }
        
        fatalError("No solution")
    }
}
