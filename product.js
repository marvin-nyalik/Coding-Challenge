const productExceptSelf = function (nums) {
  const prefProd = new Array(nums.length);
  prefProd[0] = 1;

  const postProd = new Array(nums.length);
  postProd[postProd.length - 1] = 1;

  const prodArr = new Array(nums.length);

  for (let i = 1; i < nums.length; i++) {
    prefProd[i] = prefProd[i - 1] * nums[i - 1];
  }

  for (let i = nums.length - 2; i >= 0; i--) {
    postProd[i] = postProd[i + 1] * nums[i + 1];
  }

  for (let i = 0; i < nums.length; i++) {
    prodArr[i] = postProd[i] * prefProd[i];
  }

  return prodArr;
};

/**
 * @param {number[]} nums
 * @return {number[]}
 */
var productExceptSelfI = function (nums) {
  const n = nums.length;
  const pre = new Array(n);
  const post = new Array(n);
  const result = new Array(n);

  pre[0] = 1;
  for (let i = 1; i < n; i++) {
    pre[i] = pre[i - 1] * nums[i - 1];
  }

  post[n - 1] = 1;
  for (let i = n - 2; i >= 0; i--) {
    post[i] = post[i + 1] * nums[i + 1];
  }

  for (let i = 0; i < n; i++) {
    result[i] = pre[i] * post[i];
  }

  return result;
};
