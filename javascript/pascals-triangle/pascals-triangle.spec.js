function Triangle() {}

describe('first row', ()=> {
  it('returns 1', ()=> {
    var triangle = new Triangle();
    expect(triangle.first_row).toEqual(1)
  });
});
