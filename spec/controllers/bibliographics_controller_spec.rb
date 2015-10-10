require "rails_helper"

describe BibliographicsController, :type => :controller do
  describe "GET #index" do

    it "responds successfully with an HTTP 200 status code" do
      login_user
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      login_user
      get :index
      expect(response).to be_success
      expect(assigns(:bibliographics)).not_to be_exist
      expect(response).to render_template("index")
    end

  end
end