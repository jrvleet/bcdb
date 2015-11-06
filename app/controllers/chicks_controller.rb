class ChicksController < ApplicationController
	before_action :authorize, except: [:index, :show]

	def index
		@chicks = Chick.all
	end

	def create
	  chick = Chick.new(chick_params)
	  chick.user = current_user
	  if chick.save
	    flash[:notice] = "you posted a Bad-Ass Chick!"
	    redirect_to root_path
	  else
	    render 'new'
	  end
	end

	def new
		@chick = Chick.new
	end

	def show
		@chick = Chick.find(params[:id])
	end


	def edit
		@chick = Chick.find(params[:id])
		render 'new'
	end

	def update
		@chick = Chick.find(params[:id])
		if @chick.update(chick_params)
			redirect_to @chick
		else
			render	'edit'
		end
	end

	def like
		chick = Chick.find(params[:id])
		chick.likes += 1
		chick.save
		redirect_to chicks_path
	end

	def destroy
		@chick = Chick.find(params[:id])
		@chick.destroy
		redirect_to chicks_path
	end

	private

	def chick_params
		params.require(:chick).permit(:name, :image_uri, :category, :text)
	end

end
