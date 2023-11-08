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
