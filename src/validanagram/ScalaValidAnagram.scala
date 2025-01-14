package validanagram

import scala.annotation.tailrec
import scala.collection.mutable

def isAnagramSort(s: String, t: String): Boolean =
  s.sorted == t.sorted

def isAnagramGroupMapReduce(s: String, t: String): Boolean =
  s.groupMapReduce(identity)(_ => 1)(_ + _) == t.groupMapReduce(identity)(_ => 1)(_ + _)
  
def isAnagramOneMap(s: String, t: String): Boolean =
  @tailrec
  def go(counts: Map[Char, Int], i: Int): Boolean =
    // If we reach the end of the string, then check that all values are 0
    if i >= t.length then counts.values.forall(_ == 0)
    else counts.get(t(i)) match
      case None => false // Char in t is not in s
      case Some(0) => false // Too many in t
      case Some(n) => go(counts + (t(i) -> (n - 1)), i + 1)
      
  // Only count the chars for one, then move on to the other
  go(s.groupMapReduce(identity)(_ => 1)(_ + _), 0)

def isAnagramMutableMap(s: String, t: String): Boolean =
  val counts = mutable.Map[Char, Int]()
  
  for (c <- s)
    counts(c) = counts.getOrElse(c, 0) + 1
    
  for (c <- t)
    counts(c) = counts.getOrElse(c, 0) - 1
    
  counts.values.forall(_ == 0)

def isAnagramArray(s: String, t: String): Boolean =
  val counts = Array.fill(26)(0)
  
  for (c <- s) 
    counts(c - 'a') += 1
    
  for (c <- t)
    counts(c - 'a') -= 1
    
  counts.forall(_ == 0)
  