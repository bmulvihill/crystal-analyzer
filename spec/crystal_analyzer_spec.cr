require "./spec_helper"

describe "CrystalAnalyzer" do
  describe "FormatChecker" do
    describe "#check" do
      it "finds problems with unformatted file" do
        filepath = "./spec/fixtures/unformatted.cr"
        result = CrystalAnalyzer::FormatChecker.valid_format?(filepath)
        result.should eq false
      end

      it "finds no problems with a formatted file" do
        filepath = "./spec/fixtures/formatted.cr"
        result = CrystalAnalyzer::FormatChecker.valid_format?(filepath)
        result.should eq true
      end
    end
  end
end
