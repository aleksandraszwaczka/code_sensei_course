RSpec.describe :sqrt do
  it "calculates proper square root for natural numbers" do
    expect(Math.sqrt(4)).to eq 2.0
  end
  it "calculates proper square root for natural numbers" do
    expect(Math.sqrt(3.5)).to be > 1.8
  end
end
