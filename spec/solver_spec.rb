require 'spec_helper'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe "#new" do
    it "return a Solver object" do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe "#factorial" do
    it "receives a number and return the its factorial" do
      expect(@solver.factorial(5)).to eql 120
      expect(@solver.factorial(1)).to eql 1
      expect(@solver.factorial(6)).to eql 720
    end

    it "return 1 if argument equals to 0" do
      expect(@solver.factorial(0)).to eql 1
    end

    it "raise an exception if number is negative" do
      expect(@solver.factorial(-1)).to raise_error("Argument should be a positive number.")
      expect(@solver.factorial("24")).to raise_error("Argument should be a positive number.")
      expect(@solver.factorial(nil)).to raise_error("Argument should be a positive number.")
    end
  end
end