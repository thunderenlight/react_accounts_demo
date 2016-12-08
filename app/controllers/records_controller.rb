class RecordsController < ApplicationController
	def index
		@records = Record.all
		puts @records.length
	end

	def create
		@record = Record.new(record_params)

		if @record.save
			render json: @record
		else
			render json: @record.errors, status: :unprocessable_entity
		end
	end
	def destroy
		@record  = Record.find(params[:id])
		@record.destroy
		head :no_content
	end

	private

	def record_params
		params.require(:require).permit(:title, :amount, :date)
	end

end
