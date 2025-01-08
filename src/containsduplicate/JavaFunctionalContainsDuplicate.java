package containsduplicate;

import java.util.Arrays;
import java.util.HashSet;

public class JavaFunctionalContainsDuplicate {
  public boolean containsDuplicate(int[] nums) {
    var seen = new HashSet<Integer>(nums.length);
    return !Arrays.stream(nums).allMatch(seen::add);
  }
}
