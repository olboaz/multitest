class BandsController < ApplicationController
	before_action :set_band, only: [:show, :edit, :update, :destroy]

	def index
		@bands = Band.all
	end

	def new
		@band = Band.new
	end

	def create
		@band = Band.new(band_params)

		respond_to do |format|
			if 	@band.save 
				format.js
				format.html { redirect_to @band, notice: "Band was successfully created." }
				format.json { render :show, status: :created, location: @band }
			else
				format.html { render new }
				format.json { render json: @band.errors, status: :unprocessable_entity }
			end
		end
	end

	def 

	def edit
	end

	def update
		if @band.update(band_params)
	      redirect_to band_path(@band)
	    else
	      render :new
	    end 
	end

	def destroy
		@band.destroy
		respond_to do |format|
			format.js
			format.html { redirect_to @band, notice: "Band was successfully created." }
			format.json { head :no_content }
		end
	end

	private

	def set_band
		@band = Band.find(params[:id])
	end

	def band_params
		 params.require(:band).permit(:name)
	end
end
