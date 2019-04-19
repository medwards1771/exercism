import { gigasecondAnniversary } from './gigasecond';

describe('Gigasecond', () => {
  test('tells a gigasecond anniversary since midnight', () => {
    const birthday = Date.UTC(2015, 8, 14);
    const expectedDate = new Date(Date.UTC(2047, 4, 23, 1, 46, 40));

    const gs = gigasecondAnniversary(new Date(birthday));
    expect(gs).toEqual(expectedDate);
  });

  xtest('tells the anniversary is next day when you are born at night', () => {
    const birthday = Date.UTC(2015, 8, 14, 23, 59, 59);
    const expectedDate = new Date(Date.UTC(2047, 4, 24, 1, 46, 39));

    const gs = gigasecondAnniversary(new Date(birthday));
    expect(gs).toEqual(expectedDate);
  });

  xtest('even works before 1970 (beginning of Unix epoch)', () => {
    const birthday = Date.UTC(1959, 6, 19, 5, 13, 45);
    const expectedDate = new Date(Date.UTC(1991, 2, 27, 7, 0, 25));

    const gs = gigasecondAnniversary(new Date(birthday));
    expect(gs).toEqual(expectedDate);
  });
});
