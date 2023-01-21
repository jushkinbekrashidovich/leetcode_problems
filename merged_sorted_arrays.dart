class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
       int i = m - 1; // pointer for nums1
  int j = n - 1; // pointer for nums2
  int k = m + n - 1; // pointer for the final merged array
  
  // Compare elements from the end of both arrays and add the larger element to the final array
  while (i >= 0 && j >= 0) {
    if (nums1[i] > nums2[j]) {
      nums1[k] = nums1[i];
      i--;
    } else {
      nums1[k] = nums2[j];
      j--;
    }
    k--;
  }
  
  // Add remaining elements from nums2 to the final array
  while (j >= 0) {
    nums1[k] = nums2[j];
    j--;
    k--;
  }

  }
}