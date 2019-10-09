require 'rails_helper'

describe Flight, type: :model do
  context "when created" do
    it "is valid" do
      flight = create(:flight)
      expect(flight).to be_valid
    end
  end
end