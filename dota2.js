/**
 * @param {string} senate
 * @return {string}
 */
var predictPartyVictory = function (senate) {
  const radiantQ = [];
  const direQ = [];

  for (let i = 0; i < senate.length; i++) {
    if (senate[i] == "R") {
      radiantQ.push(i);
    } else {
      direQ.push(i);
    }
  }

  while (direQ.length > 0 && radiantQ.length > 0) {
    let rad_i = radiantQ.shift();
    let dir_i = direQ.shift();

    if (rad_i < dir_i) {
      radiantQ.push(rad_i + senate.length);
    } else {
      direQ.push(dir_i + senate.length);
    }
  }

  return direQ.length > 0 ? "Dire" : "Radiant";
};
