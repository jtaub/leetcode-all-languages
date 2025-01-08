public class CSharpContainsDuplicate
{
  public bool ContainsDuplicate(int[] nums)
  {
    var seen = new HashSet<int>(nums.Length);
    return !nums.All(seen.Add);
  }
}