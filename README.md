# CodingChallenge
Practice Makes Perfect, Here's how we get better at Problem Solving

# Merge Strings Alternately - Leetcode
You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

Example 
Input: word1 = "abc", word2 = "pqr"
Output: "apbqcr"
Explanation: The merged string will be merged as so:
word1:  a   b   c
word2:    p   q   r
merged: a p b q c r

- [ ] Solution in merge_alternately.rb

# Product of Array Except Self
Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]

Example 2:

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]

- [ ] Solution in product.js

# Least Common Ancestor
Given a binary tree, find the lowest common ancestor (LCA) of two given nodes in the tree.

According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

- [ ] Solution available in lca.js

# Merge Strings Alternately - Leetcode
You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

Example 
Input: word1 = "abc", word2 = "pqr"
Output: "apbqcr"
Explanation: The merged string will be merged as so:
word1:  a   b   c
word2:    p   q   r
merged: a p b q c r

- [ ] Solution in merge.rb

# Product of Array Except Self
Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]

Example 2:

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]

- [ ] Solution in product.js

# Least Common Ancestor
Given a binary tree, find the lowest common ancestor (LCA) of two given nodes in the tree.

According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

- [ ] Solution available in lca.js

# Greatest Common Divisor of 2 Strings

For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.


Example 1:

Input: str1 = "ABCABC", str2 = "ABC"
Output: "ABC"
Example 2:

Input: str1 = "ABABAB", str2 = "ABAB"
Output: "AB"
Example 3:

Input: str1 = "LEET", str2 = "CODE"
Output: ""

- [ ] Solution in gcd.rb

# Quicksort Algorithm
Challenge: Implement the popular quicksort sorting algorithm

- [ ] Solution in quicksort.rb

# Custom Sort
Challenge:
You have an array of mixed data types, including integers, floating-point numbers, and strings. Your task is to sort this array using the <=> method, and any elements that are not comparable with others (e.g., strings with integers) should be moved to the end of the array in the order they originally appeared.

- [ ] Solution in custom sort. 

# Merge Sort Algorithm
An implementation of the merge sort algorithm

- [ ] Find solution in merge_sort.rb

# Bubble sort Algorithm

Bubble sort is a simple sorting algorithm that repeatedly steps through a given list of items, comparing each pair of adjacent items and swapping them if they’re in the wrong order. The algorithm continues until it makes a pass through the entire list without swapping any items.

Bubble sort is also sometimes referred to as “sinking sort”.

- [ ] Solution => bubble_sort.rb

# Selection Sort

Imagine you have a bunch of toys all mixed up on the floor, and you want to put them in order from smallest to biggest. Selection sort is like looking at all the toys and picking the smallest one first. You then put that smallest toy in the front. After that, you look at the rest of the toys and find the next smallest one. You keep doing this until all the toys are in order from the smallest to the biggest. It's like picking the smallest toy each time and putting it in its right place.

- [ ] Solution in selection_sort.rb

# Heap Sort Algorithm

Imagine you have a bunch of numbered cards, and you want to arrange them in order from smallest to biggest. Here's how Heap Sort works:

1. **Creating a Heap:** Think of a heap like a pile of cards. We pick up the cards and make sure that each card is in a specific order compared to the cards underneath it. This means the biggest card is at the top.

2. **Sorting the Cards:** We take the biggest card from the top of the pile and put it aside. Then, we rearrange the remaining cards to form a new heap. Now, the biggest card is not part of the heap.

3. **Repeat the Process:** We keep doing this - taking the biggest card from the top, putting it in our sorted list, and then fixing the heap with the rest of the cards.

4. **Finally Sorted:** This continues until all the cards are in the sorted order from smallest to biggest. It's like making sure the biggest card goes first and then arranging the remaining cards to find the next biggest one until they're all in order.

Heap Sort is like having a way to always pick the biggest thing from a mixed-up pile and slowly organizing everything until it's all in order.

- [ ] Solution in heap_sort.rb


# Radix Sort

Okay, imagine you have a lot of boxes with numbers written on them. Radix sort is like sorting these boxes by their numbers in a special way.

First, instead of looking at the numbers all at once, we start by looking at the boxes' last digit. We make ten groups for numbers: one for each digit from 0 to 9. Then, we put the boxes in these groups based on their last digit. So, all the boxes that end with 0 go in one group, all the ones that end with 1 go in another group, and so on.

Once we've done this, the boxes are a bit sorted based on their last digit. Then, we start again, but this time we look at the second-to-last digit. We rearrange the boxes within each group according to this digit. We keep doing this until we've looked at all the digits in the numbers.

By the end, the boxes are all lined up in order from smallest to biggest based on all their digits. It's like organizing toys by their type, then color, then size, but with numbers and their digits. That's how radix sort works!

- [ ] Solution in radix_sort.rb

# Binary Search
Binary search is a highly efficient algorithm used to locate a specific item in a sorted array. It works by repeatedly dividing the search interval in half. The algorithm compares the target value to the middle element of the array and eliminates the half in which the target cannot lie. This process continues until the target is found or the search interval is empty.

- [ ] Implementation in binary_search.rb

You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.

Merge all the linked-lists into one sorted linked-list and return it.

 

Example 1:

Input: lists = [[1,4,5],[1,3,4],[2,6]]
Output: [1,1,2,3,4,4,5,6]
Explanation: The linked-lists are:
[
  1->4->5,
  1->3->4,
  2->6
]
merging them into one sorted list:
1->1->2->3->4->4->5->6

- [ ] Solution in merge_sorted_lists.rb

# Two Pointer Technique

## Two Pointer Technique
The Two-Pointer Technique is a algorithmic approach commonly employed in computer science and software development to optimize the traversal or manipulation of data structures. It involves the use of two pointers or indices that traverse the data structure from different ends or positions. The pointers are manipulated based on specific conditions, allowing for a more efficient and often linear time complexity solution to problems that involve searching, matching, or manipulating elements within the data structure.

This technique is frequently utilized in scenarios where a brute-force approach would result in higher time complexity. The Two-Pointer Technique is particularly effective in problems related to array manipulation, linked lists, or strings. It is known for its ability to reduce time and space complexity by avoiding redundant computations and efficiently narrowing down the search space.

The general process involves initializing two pointers, often at different ends or positions of the data structure. The pointers are then iteratively adjusted based on certain conditions, such as element comparisons or specific criteria relevant to the problem at hand. The process continues until the pointers meet, indicating the completion of the algorithm. The careful manipulation of pointers allows for a streamlined and optimized traversal, making the Two-Pointer Technique a valuable tool in algorithm design and optimization.

## Two Sum Problem
Given an array of integers nums and an integer target, return the indices of the two numbers such that they add up to the target.

## Three Sum Problem
The Three Sum problem involves finding all unique triplets in an array that add up to a specific target sum.

## String Is Subsequence of
Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

- [ ] Solution in is_sub.rb

## Move Zeros
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.

- [ ] Solution in move_zeros.rb

## Max Number of K-Sum Pairs
You are given an integer array nums and an integer k.

In one operation, you can pick two numbers from the array whose sum equals k and remove them from the array.

Return the maximum number of operations you can perform on the array.

- [ ] Solution in max_k_pairs.rb

## Container with the most water
You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.

- [ ] Solution in most_water.rb

## Merge Intervals

Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

Example 1:

Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
Output: [[1,6],[8,10],[15,18]]
Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].
Example 2:

Input: intervals = [[1,4],[4,5]]
Output: [[1,5]]
Explanation: Intervals [1,4] and [4,5] are considered overlapping.

- [ ] Solution in merge_intervals.rb

# Sliding Window Technique
Imagine you have a bunch of toys (elements in an array), and you want to find the smallest group of toys that satisfies a certain condition (e.g., the sum of the numbers in the group is greater than or equal to a target).

The sliding window technique is like having a window that can slide along the toys. At first, the window covers just a few toys, and then it slides to the right, adding one more toy at a time. If, at any point, the sum of the toys inside the window meets your condition, you stop and remember the size of the window (the number of toys). Then, you slide the window to the right to see if you can find a smaller group of toys that still meets the condition.

Let's say you're looking for the smallest group of toys with a sum greater than or equal to 10. You start with the window covering the first few toys and move it to the right until the sum is 10 or more. Once you find such a group, you remember the size of the window.

Then, you slide the window to the right by one toy and check again. If the sum is still 10 or more, you check if this group is smaller than the previous one. If it is, you update your memory with the new, smaller size.

## Problem: Minimum Size Subarray Sum

Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

- [ ] Solution in min_subarray.rb

## Problem: Maximum Average Subarray I
You are given an integer array nums consisting of n elements, and an integer k.

Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.

- [ ] Solution in max_avg_subarray.rb

## Problem: Max Vowels in a Substring

Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.

- [ ] Solution in max_vowels.rb

## Problem: Maximum Number of 1's

Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.

- [ ] Solution in max_ones.rb

## Problem: Longest Subarray of 1's After Deleting One Element
Given a binary array nums, you should delete one element from it.

Return the size of the longest non-empty subarray containing only 1's in the resulting array. Return 0 if there is no such subarray.

- [ ] Solution in longest_of_ones.rb

# Prefix Sum
## Problem: Find Pivot Index
Given an array of integers nums, calculate the pivot index of this array.

The pivot index is the index where the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right.

If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left. This also applies to the right edge of the array.

Return the leftmost pivot index. If no such index exists, return -1.

- [ ] Solution in find_pivot_idx.rb

## Problem: Find the Highest Altitude

There is a biker going on a road trip. The road trip consists of n + 1 points at different altitudes. The biker starts his trip on point 0 with altitude equal 0.

You are given an integer array gain of length n where gain[i] is the net gain in altitude between points i​​​​​​ and i + 1 for all (0 <= i < n). Return the highest altitude of a point.

- [ ] Solution in highest_alt.rb

# LINKED LIST
Imagine you have a bunch of toys, and you want to line them up in a row. Each toy has a special tag that tells you where the next toy is. That's kind of like a linked list!

In a linked list, you have nodes. Each node is like a toy, and it has two parts: one part holds some information (like a toy's name), and the other part tells you where the next node is.

So, let's say you have three toys named A, B, and C. You'd make three nodes: one for A, one for B, and one for C. The node for A says, "Hey, the next toy is B." The node for B says, "Look for the next toy at C." And the node for C says, "There's no more toys after me."

- Basics in linked_list.rb

## Problem: Reverse a Linked List
Given the head of a singly linked list, reverse the list, and return the reversed list.

- Solution in reverse_linked_list.rb

## Problem: Odd Even Linked List
Given the head of a singly linked list, group all the nodes with odd indices together followed by the nodes with even indices, and return the reordered list.

The first node is considered odd, and the second node is even, and so on.

Note that the relative order inside both the even and odd groups should remain as it was in the input.

You must solve the problem in O(1) extra space complexity and O(n) time complexity.

- Solution in odd_even_linked_list.rb

## Problem: Delete the Middle Node of a Linked List
You are given the head of a linked list. Delete the middle node, and return the head of the modified linked list.

The middle node of a linked list of size n is the ⌊n / 2⌋th node from the start using 0-based indexing, where ⌊x⌋ denotes the largest integer less than or equal to x.

For n = 1, 2, 3, 4, and 5, the middle nodes are 0, 1, 1, 2, and 2, respectively.

- Solution in delete_list_mid.rb

## Problem: 2130. Maximum Twin Sum of a Linked List
Medium
Likes 3.2K
84
Companies
In a linked list of size n, where n is even, the ith node (0-indexed) of the linked list is known as the twin of the (n-1-i)th node, if 0 <= i <= (n / 2) - 1.

For example, if n = 4, then node 0 is the twin of node 3, and node 1 is the twin of node 2. These are the only nodes with twins for n = 4.
The twin sum is defined as the sum of a node and its twin.

Given the head of a linked list with even length, return the maximum twin sum of the linked list.

- [ ] Solution in link_list_max_twin_sum.rb

## Problem: 876. Middle of the Linked List
Easy
Likes 10.7K
324
Companies
Given the head of a singly linked list, return the middle node of the linked list.

If there are two middle nodes, return the second middle node.

- [ ] Solution in middle_linked_list.rb

## Problem: 234. Palindrome Linked List
Easy
15.5K
835
Companies
Given the head of a singly linked list, return true if it is a 
palindrome
 or false otherwise.

- [ ] Solution in palindrome_linked_list.rb

# Binary Tree :DFS

## Problem: 104. Maximum Depth of Binary Tree
Easy
12.1K
203
Companies
Given the root of a binary tree, return its maximum depth.

A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

Twin Case
Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

Note: A leaf is a node with no children.

- [ ] max_tree_depth.rb

## Problem: 872. Leaf-Similar Trees
Two binary trees are considered leaf-similar if their leaf value sequence is the same.

Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.

- [ ] Solution in similar_leaf.rb

## Problem: 1448. Count Good Nodes in Binary Tree
Medium
5.5K
143
Companies
Given a binary tree root, a node X in the tree is named good if in the path from root to X there are no nodes with a value greater than X.

- [ ] Solution in good_nodes.rb

## Problem: 112. Path Sum
Easy
9.2K
1K
Companies
Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum.

A leaf is a node with no children.
- [ ] Solution in path_sum.rb

## Problem: 113. Path Sum II
Medium
7.6K
147
Companies
Given the root of a binary tree and an integer targetSum, return all root-to-leaf paths where the sum of the node values in the path equals targetSum. Each path should be returned as a list of the node values, not node references.

A root-to-leaf path is a path starting from the root and ending at any leaf node. A leaf is a node with no children.

- [ ] Solution in path_sum_2.rb

## Problem: 1372. Longest ZigZag Path in a Binary Tree
65
Companies
You are given the root of a binary tree.

A ZigZag path for a binary tree is defined as follow:

Choose any node in the binary tree and a direction (right or left).
If the current direction is right, move to the right child of the current node; otherwise, move to the left child.
Change the direction from right to left or from left to right.
Repeat the second and third steps until you can't move in the tree.
Zigzag length is defined as the number of nodes visited - 1. (A single node has a length of 0).

Return the longest ZigZag path contained in that tree.

# Problem: 236. Lowest Common Ancestor of a Binary Tree
Medium
15.6K
372
Companies
Given a binary tree, find the lowest common ancestor (LCA) of two given nodes in the tree.

According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

- [ ] Solution in lca_binary_tree.rb

# Problem: 998. Maximum Binary Tree II
Medium
507
770
Companies
A maximum tree is a tree where every node has a value greater than any other value in its subtree.

You are given the root of a maximum binary tree and an integer val.

Just as in the previous problem, the given tree was constructed from a list a (root = Construct(a)) recursively with the following Construct(a) routine:

If a is empty, return null.
Otherwise, let a[i] be the largest element of a. Create a root node with the value a[i].
The left child of root will be Construct([a[0], a[1], ..., a[i - 1]]).
The right child of root will be Construct([a[i + 1], a[i + 2], ..., a[a.length - 1]]).
Return root.
Note that we were not given a directly, only a root node root = Construct(a).

Suppose b is a copy of a with the value val appended to it. It is guaranteed that b has unique values.

Return Construct(b).

- [ ] Solution in max_binary_tree_ii_insert.rb

# Problem: 654. Maximum Binary Tree
Medium
5.1K
329
Companies
You are given an integer array nums with no duplicates. A maximum binary tree can be built recursively from nums using the following algorithm:

Create a root node whose value is the maximum value in nums.
Recursively build the left subtree on the subarray prefix to the left of the maximum value.
Recursively build the right subtree on the subarray suffix to the right of the maximum value.
Return the maximum binary tree built from nums.

- [ ] Solution in build_max_bin_tree.rb

# Problem: 450. Delete Node in a BST
Medium
8.6K
233
Companies
Given a root node reference of a BST and a key, delete the node with the given key in the BST. Return the root node reference (possibly updated) of the BST.

Basically, the deletion can be divided into two stages:

Search for a node to remove.
If the node is found, delete the node.

- [ ] Solution in delete_tree_node.rb

## Binary Tree BFS
# Problem: 1161. Maximum Level Sum of a Binary Tree
Medium
3.4K
97
Companies
Given the root of a binary tree, the level of its root is 1, the level of its children is 2, and so on.

Return the smallest level x such that the sum of all the values of nodes at level x is maximal.

- [ ] Solution in max_level_sum.rb

# Problem: 199. Binary Tree Right Side View
Medium
11.3K
786
Companies
Given the root of a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

- [ ] Solution in binary_tree_right_view.rb

# Problem: 841. Keys and Rooms
Medium
5.8K
256
Companies
There are n rooms labeled from 0 to n - 1 and all the rooms are locked except for room 0. Your goal is to visit all the rooms. However, you cannot enter a locked room without having its key.

When you visit a room, you may find a set of distinct keys in it. Each key has a number on it, denoting which room it unlocks, and you can take all of them with you to unlock the other rooms.

Given an array rooms where rooms[i] is the set of keys that you can obtain if you visited room i, return true if you can visit all the rooms, or false otherwise.

- [ ] Solution in keys_and_rooms.rb
