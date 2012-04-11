require 'spec_helper'

describe UserController do
  render_views

  describe "GET 'user1'" do
    it "should be successful" do
      get 'user1'
      response.should be_success
    end

    it "should have the right title" do
      get 'user1'
      response.should have_selector("title", :content => "Sign up")
    end
  end
end

