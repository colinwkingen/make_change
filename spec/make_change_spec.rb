require("rspec")
require("make_change")

describe("String#make_change") do
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("1".make_change(1,0,0,0)).to(eq([['1','0','0','0'],['0','0','0','0', "true"]]))
  end
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("6".make_change(1,1,0,0)).to(eq([['1','1','0','0'],['0','0','0','0', "true"]]))
  end
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("16".make_change(1,1,1,0)).to(eq([['1','1','1','0'],['0','0','0','0', "true"]]))
  end
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("41".make_change(1,1,1,1)).to(eq([['1','1','1','1'],['0','0','0','0', "true"]]))
  end
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("267".make_change(2,1,1,10)).to(eq([['2','1','1','10'],['0','0','0','0', "true"]]))
  end
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("50".make_change(0,0,0,2)).to(eq([['0','0','0','2'],['0','0','0','0', "true"]]))
  end
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("20".make_change(0,0,2,0)).to(eq([['0','0','2','0'],['0','0','0','0', "true"]]))
  end
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("5".make_change(0,1,0,0)).to(eq([['0','1','0','0'],['0','0','0','0', "true"]]))
  end
  it("enter a number and it returns the minimum coin amounts required to make that change") do
    expect("4".make_change(4,0,0,0)).to(eq([['4','0','0','0'],['0','0','0','0', "true"]]))
  end

end
