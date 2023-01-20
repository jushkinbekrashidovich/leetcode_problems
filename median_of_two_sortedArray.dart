import 'dart:math';

class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  
  int m = nums1.length;
  int n = nums2.length;

  if (m > n) {
    // swap nums1 and nums2 to make sure nums1 is shorter
    var temp = nums1;
    nums1 = nums2;
    nums2 = temp;
    var tempLength = m;
    m = n;
    n = tempLength;
  }

  int iMin = 0, iMax = m, halfLen = (m + n + 1) ~/ 2;
  while (iMin <= iMax) {
    int i = (iMin + iMax) ~/ 2;
    int j = halfLen - i;
    if (i < iMax && nums2[j-1] > nums1[i]) {
      iMin = i + 1;
    }
    else if (i > iMin && nums1[i-1] > nums2[j]) {
      iMax = i - 1;
    }
    else {
      int maxLeft;
      if (i == 0) { maxLeft = nums2[j-1]; }
      else if (j == 0) { maxLeft = nums1[i-1]; }
      else { maxLeft = max(nums1[i-1], nums2[j-1]); }

      if ((m + n) % 2 == 1) { return maxLeft.toDouble(); }

      int minRight;
      if (i == m) { minRight = nums2[j]; }
      else if (j == n) { minRight = nums1[i]; }
      else { minRight = min(nums1[i], nums2[j]); }

      return (maxLeft + minRight) / 2.0;
    }
  }
  return 0.0;

  }
}