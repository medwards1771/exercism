export const convert = (digits, baseA, baseB) => {
  if (baseB === 10) {
    let highestPlace = digits.length - 1;
    const newDigits = [];
    const newDigit = digits.reduce((acc, digit) => {
      const sum = acc + (digit * (baseA ** highestPlace));
      highestPlace -= 1;
      return sum;
    }, 0);
    return newDigits.concat(newDigit);
  } if (baseB === 2) {
    const one = 1;
    const two = 2;
    const newDigits = [];
    // (5 * (10 ** 0))
    // (1 * (2 ** 2)) + (0 * (2 ** 1)) + (1 * (2 ** 0))
    // 4 + 0 + 1
    //
    // 1 0 1 0 1 0 1 0
    // (1) (0) (1) (0)

  }
};
