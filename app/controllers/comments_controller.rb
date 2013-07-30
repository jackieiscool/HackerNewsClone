class CommentsController < ApplicationController

	def create
		@link = Link.find(params[:comment].delete(:link_id))
		@comment = @link.comments.build(params[:comment])
		flash[:errors] = @comment.errors.messages unless @comment.save
		redirect_to @link
	end

end