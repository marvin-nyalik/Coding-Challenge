/* Given an array of integers nums and an integer k,

return the total number of subarrays whose sum equals to k.

A subarray is a contiguous non-empty sequence of elements within an array

*/

/*
  count = 0
  subarr = nums[0]
  for(let i =0; i < nums.length; i++){
    if sum(subarr) == k
      count += 1
    else{
        subarr.push(subarr[i + 1])
    }
  }
*/