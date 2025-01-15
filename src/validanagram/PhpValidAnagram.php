<?php

namespace validanagram;

class PhpValidAnagram {

  /**
   * @param String $s
   * @param String $t
   * @return Boolean
   */
  function isAnagram(string $s, string $t): bool {
    return count_chars($s, 1) === count_chars($t, 1);
  }
}