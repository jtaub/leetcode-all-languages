package containsduplicate;

import java.util.HashSet;

public class JavaContainsDuplicate {
  public boolean containsDuplicate(int[] nums) {
    var seen = new HashSet<Integer>(nums.length);

    for (var num : nums) {
      if (!seen.add(num)) {
        return true;
      }
    }

    return false;
  }
}
