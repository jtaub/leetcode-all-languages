class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndex = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            let complement = target - num
            
            if let j = numToIndex[complement] {
                return [j, i]
            }
            
            numToIndex[num] = i
        }
        
        fatalError("this should not be reachable")
    }
}
