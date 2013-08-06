require 'spec_helper'

describe PostsController do
  describe "GET #index" do 
    let(:posts) { Post.all }
    it "populates an array of posts" do
      get :index
      assigns(:posts).should eq(posts)
    end
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    let(:post) { FactoryGirl.create :post}
    it "assigns the requested post" do
      get :show, id: post.id
      assigns(:post).should eq(post)
    end

    it "renders the :show view" do
      get :show, id: post.id
      response.should render_template :show
    end
  end

  describe "GET #new" do
    let(:post) { FactoryGirl.create :post}
    describe "when signed in" do
      user = FactoryGirl.create :user
      sign_in user
      it "allows logged in users only" do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        get :new
      end
    end
    describe "when anonymous" do
      it "disallows anonymous users" do
      end
    end
  end

  describe "POST #create" do
    let(:post) { FactoryGirl.create :post}
  end

  describe "GET #edit" do
    let(:post) { FactoryGirl.create :post}
  end

  describe "PUT #update" do
    let(:post) { FactoryGirl.create :post}
  end

  describe "DELETE #destroy" do
    let(:post) { FactoryGirl.create :post}
  end


end
