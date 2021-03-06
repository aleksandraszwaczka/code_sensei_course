require './hypotenuse_length'

RSpec.describe :hypotenuse_length do
  it "returns correct value" do
    expect(hypotenuse_length(3, 4)).to eq(5.0)
    #eq to equal
    expect(hypotenuse_length(4, 3)).to eq(5.0)
    expect(hypotenuse_length(6, 8)).to eq(10.0)

    expect(hypotenuse_length(2, 10).round(1)).to eq(10.2)
    expect(hypotenuse_length(1, 1).round(1)).to eq(1.4)
  end
end

#Rspec wykorzystuje DSL (domain specyfic language)
