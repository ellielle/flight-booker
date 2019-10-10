require 'rails_helper'

describe "Search functionality", type: :request do
  context "on load" do
    it "page works" do
      get root_path
      expect(response.status).to eq(200)
    end
  end
end