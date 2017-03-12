require 'rails_helper'

RSpec.describe SponsoredPostsController, type: :controller do
  let(:my_sp) {SponsoredPost.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_price)}

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_sp.id}
      expect(response).to have_http_status(:success)
    end
    it "renders the #show" do
      get :show, {id: my_sp.id}
      expect(response).to render_template :show
    end
    
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "renders a new view" do
      get :new
      expect(assigns(:sp)).not_to be_nil
    end
    it "initializes @sp" do
      get :new
      expect(assigns(:sp)).not_to be_nil
    end
    
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, {id: my_sp.id}
      expect(response).to have_http_status(:success)
    end
    it "renders the edit" do
      get :edit, {id: my_sp.id}
      expect(response).to render_template :edit
    end
    it "assigns sp to be updated to @sp" do
      get :edit, {id: my_sp.id}
      sp_instance = assigns(:sp)
      
      expect(sp_instance.title).to eq my_sp.title
      expect(sp_instance.body).to eq my_sp.body
      expect(sp_instance.price).to eq my_sp.price
    end
  end
end
