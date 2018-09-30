require_relative "./converter"

RSpec.describe Converter do
  let(:converter) { Converter.new(currencies) }

  describe "#convert_to_currency" do
    let(:result) { converter.convert_to_currency(100, :usd) }

    context "when currency exists" do
      let(:currencies) { { usd: 3.6334 } }

      it "returns proper value" do
        expect(result).to eq 27.522430781086587
      end
    end

    context "when currency does not exist" do
      let(:currencies) { { eur: 4.2772 } }

      it "returns proper value" do
        expect(result).to eq nil
      end
    end
  end
  describe "#add_currency"  do
    context "when currency is not present yet" do
      let(:currencies) { { usd: 3.6334 } }

      it 'adds currency' do
        converter.add_currency(:chf, 3.7501)

        expect(currencies).to eq(usd: 3.6334, chf: 3.7501)
      end
    end

    context "when currency is already present" do
      let(:currencies) { { chf: 3.6334 } }

      it 'reassigns currency' do
        converter.add_currency(:chf, 4.2123)

        expect(currencies).to eq(chf: 4.2123)
      end
    end
  end
end
