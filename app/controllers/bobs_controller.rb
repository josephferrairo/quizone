class BobsController < ApplicationController


	def index
		@bob = Bob.order("RANDOM()").first
	end

	def special
	end

	def show
@bob = Bob.where(:id => params[:id]).first
end

	def new
		@bob = Bob.new
	end

	def create
    Bob.create(bob_params)
		redirect_to root_path
  end

	def update
	@bob = Bob.find(params[:id])
	redirect_to root_path
end
	private

def bob_params
	params.require(:bob).permit(:saying, :author)
end
end
