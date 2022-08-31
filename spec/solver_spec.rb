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
end