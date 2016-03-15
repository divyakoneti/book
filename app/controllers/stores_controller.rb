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
    @custmers=Custmer.all
   end
   def login
  	@custmer=Custmer.new
  end
   def check
    @verify=Custmer.new(data_params)
    @count=0
     @obj=Custmer.all
     @obj.each do |object|
       if (@verify.email==object.email && @verify.password==object.password)
        if object.role== "admin"
          redirect_to stores_theater_path,:notice => "admin"
          session[:username]=object.name
        else
          redirect_to stores_store_path(custmer_id:object.id)
          session[:username]=object.name
          session[:user_id]=object.id
        end
      end
    end
        


end
def theater
  @theater=Theater.new
end
def theaters_store
 @theater= Theater.new(theater_params)
 if(theater.save)
  redirect_to stores_store_path
  else
  redirect_to stores_theater_path
  end
 end 
def movie
  @movie=Movie.new
end
def movies_store
 @movie=Movie.new(movie_params)
  if(@movie.save)
   redirect_to stores_store_patth
  else
   redirect_to stores_movie_path
  end
end  
def movie_theaters
 @theater=Theater.all
 @movie=Movie.all
 @movie_theater=MovieTheater.new
end
def movie_theaters_store
 @movie_theater=MovieTheater.new(movie_theater_params)
 @count=0
 @check=MovieTheater.all
 @check.each do |object|
        if(object.movie_id==@movie_theater.movie_id&&object.theater_id==@movie_theater.theater_id)
          @count+=1
        end
      end
          if @count==1
          redirect_to tickets_movie_theaters_path ,:notice=>"Registration Failure"
         else
           @theater=Theater.find(@movie_theater.theater_id)
           @movie=Movie.find(@movie_theater.movie_id)
          @movie_the=MovieTheater.create(theater_id: @theater.id ,movie_id: @movie.id)
          redirect_to tickets_store_path ,:notice=>"Registration Succesfully"

          end

    end  
 def bookings
   @movie=Movie.all  
   @theater=Theater.all
 end
 def bookings_store
   @movie_id=params[:movie_id]
   @theater_id=params[:theater_id]
   if(@movie_id!=nil)
     @movie=Movie.find(@movie_id)
   else
     @theater=Theater.find(@theater_id) 
   end
   @allTheaters= Theater.joins(:movies).where(:movies=>{id:movie_id})
   @count=Theater.joins(:movies).where(:movies=>{id:@movie_id}).count
     @allMovies=Movie.joins(:theaters).where(:theaters=>{id:@theater_id})
    @Moviecount=Movie.joins(:theaters).where(:theaters=>{id:@theater_id}).count
    end        

private
def add_params
  params.require(:custmer).permit(:name,:email,:password,:mobile)
end
def data_params
  params.require(:custmer).permit(:email,:password)
 end
 end 

def theater_params
  params.require(:theater).permit(:t_name,:t_owner,:t_no_of_seats)
end
def movie_params
  params.require(:movie).permit(:movie_name,:movie_director)
end  
def movie_theater_params
   params.require(:movie_theater).permit(:movie_id, :theater_id)
end   