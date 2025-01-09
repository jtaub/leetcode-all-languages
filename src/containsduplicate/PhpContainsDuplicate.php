<?php

namespace containsduplicate;
class PhpContainsDuplicate {

  /**
   * @param Integer[] $nums
   * @return Boolean
   */
  function containsDuplicate($nums) {
    $seen = [];
    
    foreach ($nums as $num) {
      if (isset($seen[$num])) {
        return true;
      }
      
      $seen[$num] = true;
    }
    
    return false;
  }
}