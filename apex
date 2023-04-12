public class dsaController 
{
    public static List<Integer> twoSum(List<Integer> nums, Integer target) {
    Map<Integer, Integer> maps = new Map<Integer, Integer>();
    for (Integer i = 0; i < nums.size(); i++) {
        Integer complement = target - nums[i];
        if (maps.containsKey(complement)) {
            return new List<Integer>{maps.get(complement), i};
        }
        maps.put(nums[i], i);
    }
    return new List<Integer>();
}

}
List<Integer> nums = new List<Integer>{2, 7, 11, 15};
Integer target = 18;
List<Integer> result = dsaController.twoSum(nums, target);
System.debug(result); // prints [0, 1]
