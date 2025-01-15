func isAnagram(_ s: String, _ t: String) -> Bool {
   
   var counts = [Int](repeating: 0, count: 26)
   let a= Character("a").asciiValue!
   
   for c in s {
       counts[Int(c.asciiValue! - a)] += 1
   }
   
   for c in t {
       counts[Int(c.asciiValue! - a)] -= 1
   }
   
   return counts.allSatisfy { $0 == 0 }
}

func isAnagramDictionary(_ s: String, _ t: String) -> Bool {
   
   var counts = [Character: Int]()
      
   for c in s {
       counts[c, default: 0] += 1
   }
   
   for c in t {
       counts[c, default: 0] -= 1
   }
   
   return counts.values.allSatisfy { $0 == 0 }
}