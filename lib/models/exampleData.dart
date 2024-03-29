final problemsData = {
  {
    "id": "Two Sum",
    "difficulty": "Easy",
    "topic": ["HashMap", "Array"],
    "description":
        "Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.\n\nYou may assume that each input would have exactly one solution, and you may not use the same element twice.\n\nYou can return the answer in any order.",
    "example":
        "Example 1:\nInput: nums = [2,7,11,15], target = 9\nOutput: [0,1]\nExplanation: Because nums[0] + nums[1] == 9, we return [0, 1].\n\nExample 2:\nInput: nums = [3,2,4], target = 6\nOutput: [1,2]\n\nExample 3:\nInput: nums = [3,3], target = 6\nOutput: [0,1]"
  },
  {
    "id": "Add Two Numbers",
    "difficulty": "Medium",
    "topic": ["Linked List", "Math", "Recursion"],
    "description":
        "You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.\n\nYou may assume the two numbers do not contain any leading zero, except the number 0 itself.",
    "example":
        "Example 1:\nInput: l1 = [2,4,3], l2 = [5,6,4]\nOutput: [7,0,8]\nExplanation: 342 + 465 = 807.\n\nExample 2:\nInput: l1 = [0], l2 = [0]\nOutput: [0]\n\nExample 3:\nInput: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]\nOutput: [8,9,9,9,0,0,0,1]"
  },
  {
    "id": "Longest Substring Without Repeating Characters",
    "difficulty": "Medium",
    "topic": ["Hash Table", "String", "Sliding Window"],
    "description":
        "Given a string s, find the length of the longest substring without repeating characters",
    "example":
        '''Example 1:\nInput: s = "abcabcbb"\nOutput: 3\nExplanation: The answer is "abc", with the length of 3.\n\nExample 2:\nInput: s = "bbbbb"\nOutput: 1\nExplanation: The answer is "b", with the length of 1.\n\nExample 3:\nInput: s = "pwwkew"\nOutput: 3\nExplanation: The answer is "wke", with the length of 3. Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.'''
  },
  {
    "id": "Median of Two Sorted Arrays",
    "difficulty": "Hard",
    "topic": ["Array", "Binary Search", "Divide and Conquer"],
    "description":
        "Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).",
    "example":
        "Example 1:\nInput: nums1 = [1,3], nums2 = [2]\nOutput: 2.00000\nExplanation: merged array = [1,2,3] and median is 2.\n\nExample 2:\nInput: nums1 = [1,2], nums2 = [3,4]\nOutput: 2.50000\nExplanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5."
  }
};
