require 'rails_helper'

describe "Dashboard" do
	

	context "logged in" do

		before do
			user = User.create(email: 'alex@example.com', password: '12345678', password_confirmation: '12345678')
			login_as user
		end

		it "should render the dashboard view with the angular template" do
			# get :dashboard
			# assert_template :dashboard
			# assert_template layout: "layouts/angular"
		end

	end

	context "logged out" do

		it "should render the index view without a user" do
			# get :index
			# assert_response :success
		end

		it "should redirect from dashboard view to index without a user" do
			# get :dashboard
			# assert_response :redirect
		end

	end

end  