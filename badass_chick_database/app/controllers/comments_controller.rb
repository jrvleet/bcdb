class CommentsController < ApplicationController
	def new
		@comment = Comment.new
		@chick = Chick.find(params[:chick_id])
	end

	def create
		@chick = Chick.find(params[:chick_id])
		@comment = @chick.comments.build(comment_params)

		if @comment.save
			flash[:notice] = "Comment added!"
			redirect_to chicks_path
		else
			render 'new'
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :user, :chick)
	end
end