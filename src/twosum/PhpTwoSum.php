<?php

namespace twosum;
class PhpTwoSum {

    /**
     * @param Integer[] $nums
     * @param Integer $target
     * @return Integer[]
     */
    function twoSum(array $nums, int $target) {
        $numToIndex = [];
        
        foreach ($nums as $i => $num) {
            $j = $numToIndex[$num];
            
            if ($j !== null) {
                return [$j, $i];
            }
            
            $numToIndex[$target - $num] = $i;
        }
        
        throw new \BadFunctionCallException('No solution');
    }
}