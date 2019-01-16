require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  # we must initiate a 'subject' before the let, or the helper test objects.
  subject(:dessert) do
    Dessert.new("muffin", 10, chef)
  end
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do 
      expect(dessert.type).to eq("muffin")
    end
    # start with expect, the argument that follows should call the class' instance variable in question
    # in this case, quantity.
    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end
    # it must start with a do and end block
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect do 
        #this is a do block, we say, if we run this code on the left of .to 
        # we raise an error that says...
        Dessert.new("muffin", "alot", chef).to raise_error("You've entered a non-integer dummy!")
      end
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      dessert.add_ingredient('milk')
      expect(dessert.ingredients).to include('milk')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert = ['flour', 'peanut butter', 'candy']
      dessert.mix!
      expect(dessert.ingredients).to_to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
