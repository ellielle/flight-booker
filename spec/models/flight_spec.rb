require 'rails_helper'

describe Flight do
  context "when new flight is created" do
    it "is valid" do
      flight = create(:flight)
      expect(flight).to be_valid
    end
  end
end