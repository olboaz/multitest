class BandsController < ApplicationController
	def index
	end

	def new
		@band = Band.new
	end

	def create
		@band = Band.new(band_params)

		respond_to do |format|
			format.html { redirect_to @band, notice: "Band was successfully created." }
			format.json { render: show, status: :created, location: @band }
		else
			format.html { render new }
			format.json { render json: @band.errors, status: :unprocessable_entity }
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
