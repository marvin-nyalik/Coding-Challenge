/**
 * @param {character[]} chars
 * @return {number}
 */
var compress = function (chars) {
  let i = 0;
  let write = 0;

  while (i < chars.length) {
    let char = chars[i];
    let count = 0;

    while (chars[i] === char) {
      count += 1;
      i++;
    }

    chars[write] = char;
    write++;

    if (count > 1) {
      for (let c of count.toString()) {
        chars[write] = c;
        write++;
      }
    }
  }

  return write;
};
