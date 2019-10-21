class Triangle {
  row(number){
    var list = [1]

    if(number === 1){
      return list;
    } else if(number === 2) {
      list.push(1);
      return list
    } else if(number === 3) {
      list.push(1);
      let index = Math.floor(list.length / 2)
      list.splice(index, 0, 2);
      return list
    } else {
      list.push(1);
      let index = Math.floor(list.length / 2)
      list.splice(index, 0, 2);
      return list
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

  it('computes the numbers returned by the third row', ()=> {
    expect(triangle.row(3)).toEqual([1,2,1])
  });

  it('computes the numbers returned by the fourth row', ()=> {
    expect(triangle.row(4)).toEqual([1,3,3,1])
  });
});
