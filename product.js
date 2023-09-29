const productExceptSelf = function(nums) {
    const prefProd = new Array(nums.length);
    prefProd[0] = 1;

    const postProd = new Array(nums.length);
    postProd[postProd.length - 1] = 1;

    const prodArr = new Array(nums.length);

    for(let i = 1; i < nums.length; i ++){
        prefProd[i] = prefProd[i - 1] * nums[i-1]
    }

    for(let i = nums.length - 2; i >= 0; i --){
        postProd[i] = postProd[i + 1] * nums[i + 1]
    }

    for(let i = 0; i < nums.length; i ++){
        prodArr[i] = postProd[i] * prefProd[i] 
    }
    
    return prodArr;
};

