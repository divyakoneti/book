class StoresController < ApplicationController
  def new
  	@custmer=Custmer.new   #here create object for Custmer model
  end
  
  def create 
   @custmer=Custmer.new(add_params) # create used for add the records to the database	
     if @custmer.save
     	redirect_to stores_login_path, :notice => "regeisterd sucessfull"
     else
        redirect_to stores_new_path, :notice =>  "registration failure"	
     end
   end 
   def index
   end
   def login
  	@custmer=Custmer.new
  end
   def check
    @verify=Custmer.new(data_params)
    @count=0
     @verify.each do |object|
       if (@verify.email==object.email && @verify.password==object.password)
        if object.role== "admin"
          redirect_to stores_store_path,:notice => "admin"
          session[:username]=object.name
        else
          redirect_to stores_booking_path(custmer_id:object.id)
          session[:username]=object.name
          session[:user_id]=object.id
        end
      end
    end
        


end
private
def add_params
  params.require(:custmer).permit(:name,:email,:password,:mobile)
end
def data_params
  params.require(:custmer).permit(:email,:password)
 end
 end 

