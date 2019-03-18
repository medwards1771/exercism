const divisibleByOneHundred = year => year % 100 === 0;

const divisibleByFour = year => year % 4 === 0;

const notDivisibleByFour = year => !divisibleByFour(year);

const divisibleByFourHundred = year => year % 400 === 0;

const notDivisibleByFourHundred = year => !divisibleByFourHundred(year);

export const isLeap = (year) => {
  if (notDivisibleByFour(year)) {
    return false;
  }
  if (divisibleByOneHundred(year) && notDivisibleByFourHundred(year)) {
    return false;
  }
  return true;
};
