const LCA = (treeArray, p, q) => {
    let index1 = treeArray.indexOf(p);
    let index2 = treeArray.indexOf(q);
    
    if (index1 === -1 || index2 === -1) {
        return -1;
    }
    
    while (index1 !== index2) {
        if (index1 < index2) {
            index2 = Math.floor((index2 - 1) / 2);
        } else {
            index1 = Math.floor((index1 - 1) / 2);
        }
    }
    
    return treeArray[index2];
};

let t = [3, 5, 1, 6, 2, 0, 8, null, null, 7, 4];
let p = 5;
let q = 1;
console.log(LCA(t, p, q)); // Output: 3
