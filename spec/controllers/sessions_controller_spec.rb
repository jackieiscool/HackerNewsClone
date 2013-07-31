require 'spec_helper'

describe SessionsController do
	let(:user) { FactoryGirl.create(:user) }
	let(:login_params) { FactoryGirl.build(:login_params) }

	describe '#new' do
		it 'should render new' do
			get :new
			expect(response).to render_template(:new)
		end
	end

	describe '#create' do
		before :each do
			user
		end

		context 'with valid info' do
			it 'should sign in user' do
				post :create, session: login_params
				current_user.should eq(user)
			end

			it 'should redirect to links' do
				post :create, session: login_params
				expect(response).to redirect_to links_path
			end
		end

		context 'with invalid info' do
			it 'should not login user' do
				post :create, session: {}
				current_user.should eq(nil)
			end

			it 'should render new' do
				post :create, session: {}
				expect(response).to render_template :new
			end
		end
	end

	describe '#destroy' do
		before :each do
			user
			post :create, session: login_params
		end

		it 'should redirect_to index' do
			delete :destroy, id: user.id
			expect(response).to redirect_to root_path
		end
	end

end
