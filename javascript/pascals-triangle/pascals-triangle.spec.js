class Triangle {
  row(number){
    if(number === 1){
      return [1];
    } else {
      return [1,1]
    }
  }
}


describe('#row', ()=> {
  var triangle = new Triangle();
  it('computes numbers returned by the first row', ()=> {
    expect(triangle.row(1)).toEqual([1])
  });

  it('computes the numbers returned by the second row', ()=> {
    expect(triangle.row(2)).toEqual([1,1])
  });
});
