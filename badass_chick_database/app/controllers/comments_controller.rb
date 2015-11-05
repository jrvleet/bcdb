class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user = current_user
		@comment.chick = Chick.find(params[:list_id])
		if @comment.save
			flash[:notice] = "Comment added!"
			redirect_to :back
		else
			render 'new'
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :user, :chick)
	end
end