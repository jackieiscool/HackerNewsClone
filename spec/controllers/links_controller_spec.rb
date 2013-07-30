require 'spec_helper'

describe LinksController do

	let(:link) { FactoryGirl.create(:link) }

	describe '#index' do
		before :each do
			get :index
		end

		it 'should assign @links' do
			links = Link.all
			expect(assigns(:links)).to eq(links)
		end

		it 'should render index.html' do
			expect(response).to render_template :index
		end

	end

	describe '#new' do
		before :each do
			get :new
		end

		it 'should render new.html' do
			expect(response).to render_template :new
		end

		# it 'should assign  @link' do
		# 	expect(assigns(:link)).class
		# end

	end

	describe '#create' do
		before :each do
			@link_params  = {
				title: 'title',
				url: 'www.url.com'
			}
		end

		it 'should create a new link' do
			expect{ 
				post :create, link: @link_params #FactoryGirl.build(:link).attributes
				}.to change(Link, :count).by(1)
		end

	end

	describe '#edit' do

		it 'should find by id' do
			get :edit, id: link.id
			expect(assigns(:link)).to eq(link)
		end

	end

	describe '#update' do
		
	end

	describe '#destroy' do

		it 'should delete a link' do
			link
			expect{
				delete :destroy, id: link.id
			}.to change(Link, :count).by(-1)
		end
	end

end