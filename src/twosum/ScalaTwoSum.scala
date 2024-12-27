package twosum

import scala.annotation.tailrec

object ScalaTwoSum:
  def twoSum(nums: Array[Int], target: Int): Array[Int] =
    @tailrec
    def go(numToIndex: Map[Int, Int], i: Int): Array[Int] =
      numToIndex.get(nums(i)) match 
        case Some(j) => Array(j, i)
        case None => go(numToIndex + (target - nums(i) -> i), i + 1)
  
    go(Map(), 0)
