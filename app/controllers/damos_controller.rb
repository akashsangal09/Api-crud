class DamosController < ApplicationController

	def index
		data = Datum.all
		render json:{code:200, message:data}
	end

	def create
		data = Datum.create(name:params[:name], price:params[:price])
		render json:{code:200, message:data}

	end

	def show
		data = Datum.find_by(id:params[:id])
		if data
			render json:{code:200, message:data}
		else
			render json: {code:404, message:"Not found"}

		end
	end

	def update
		data = Datum.find_by(id:params[:id])
		if data
			data1 =  Datum.update(name:params[:name], price:params[:price])
			if data1
				render json:{code:200, message:data1}
			else
				render json:{code:500, message:"Something went wrong"}
			end
		end	
	end

	def destroy
		data = Datum.find_by(id:params[:id])
		if data
			if data.destroy
			  render json:{code:200, message:"data delete successfully"} 
			else
			 render json:{code:500, message:"Something went wrong"}
			end
		end

	end

end
