class Triangle {
  firstRow(){
    return 1;
  }
}


describe('first row', ()=> {
  it('returns 1', ()=> {
    var triangle = new Triangle();
    expect(triangle.firstRow()).toEqual(1)
  });
});
