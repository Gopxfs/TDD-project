require 'spec_helper'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe "#new" do
    it "returns a Solver object" do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe "#factorial" do
    it "receives a number and return its factorial" do
      expect(@solver.factorial(5)).to eql 120
      expect(@solver.factorial(1)).to eql 1
      expect(@solver.factorial(6)).to eql 720
    end

    it "returns 1 if argument equals to 0" do
      expect(@solver.factorial(0)).to eql 1
    end

    it "raises an exception if number is negative" do
      expect(@solver.factorial(-1)).to raise_error("Argument should be a positive number.")
      expect(@solver.factorial("24")).to raise_error("Argument should be a positive number.")
      expect(@solver.factorial(nil)).to raise_error("Argument should be a positive number.")
    end
  end

  describe "#reverse" do
    it "returns the argument (string) reversed" do
      expect(@solver.reverse("abc")).to eql "cba"
      expect(@solver.reverse("aKlqOrIfk")).to eql "kfIrOqlKa"
    end

    it "raises an exception if argument is not a string" do
      expect(@solver.reverse(5)).to raise_error("Argument should be a string.")
      expect(@solver.reverse(true)).to raise_error("Argument should be a string.")
    end
  end
end