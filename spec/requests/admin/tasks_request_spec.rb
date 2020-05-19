require 'rails_helper'

RSpec.describe "Admin::Tasks", type: :request do

  describe "GET /edit" do
    it "returns http success" do
      get "/admin/tasks/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
