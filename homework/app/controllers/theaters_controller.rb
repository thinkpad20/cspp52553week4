class TheatersController < ApplicationController

	def index
    	@theaters = Theater.all
  	end

  	def show
    	@theater = Theater.find_by_id(params[:id])
  	end

	def new

	end

	def create
		t = Theater.new
		t.name = params[:name]
		t.address = params[:address]
		t.phone_number = params[:phone_number]
		t.save

		redirect_to theaters_url
	end

	def edit
		@theater = Theater.find_by_id(params[:id])
  	end

	def update
		@theater = Theater.find_by_id(params[:id])
		@theater.name = params[:name]
		@theater.address = params[:address]
		@theater.phone_number = params[:phone_number]
		@theater.save
		redirect_to theaters_url
	end

	def destroy
		t = Theater.find_by_id(params[:id])
		t.destroy
		redirect_to theaters_url
	end
end
