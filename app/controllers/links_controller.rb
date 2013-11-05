class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])
		@link.user = current_user
		if @link.save
			redirect_to links_path
		else
			flash[:error] = @link.errors.messages
			render :new
		end
	end

	def edit
		@link = Link.find(params[:id])
	end

	def destroy
		link = Link.find(params[:id])
		link.delete
		redirect_to links_path
	end

end