class Triangle {
  row(number){
    return number;
  }
}


describe('#row', ()=> {
  var triangle = new Triangle();
  it('computes the numbers for a given row', ()=> {
    expect(triangle.row(1)).toEqual(1)
  });
});
