class FormsController < ApplicationController
 def index
 	@forms=User.all
 end
 def new
 	@form=Form.new
 end
 def create
 	@form= Form.new(params[:sampleform])
 	if @form.save
 		redirect_to forms_path
 	end
 	end
 	def destroy
 	 @form=Form.find_by_id(params[:id])
 	 if @form.destroy
 	   redirect_to forms_path
 	  end
 	  end
 	  
 	  def form
 	  	@form=Form.new
 	  end
 	  def show
 	  end
 	  end 	






