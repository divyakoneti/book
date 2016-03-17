class BooksController < ApplicationController
  def index
  	@books= Book.all

  end
  def update
  	@book=Book.find(params[:id])
  	if @book.update(book_params)
  		rediredt_to(@book)
  		else
  			render "stores/login"
  	end
  end
  def show 
   @book=Book.find(params[:id])
   
end
   
 
  
  private 
    def book_params
     params.require(:book).permit(:name,:pages)
     end		
end
