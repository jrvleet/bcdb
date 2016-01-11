class CommentsController < ApplicationController
	
	def new
		@comment = Comment.new
		@chick = Chick.find(params[:chick_id])
	end

	def create
		@chick = Chick.find(params[:chick_id])
		@comment = @chick.comments.build(comment_params)
		@comment.user = current_user

		if @comment.save
			flash[:notice] = "Comment added!"
			redirect_to chicks_path(anchor: @chick.name.parameterize)
		else
			render 'new'
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to chicks_path(@chick)
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :user, :chick)
	end
end